use std::error::Error;
use std::io;
use wasmtime::*;

fn preprocess_input(input: &String) -> Option<&str> {
    let input_trimmed = input.trim();
    if input_trimmed == "close" {
        None
    } else {
        Some(input_trimmed)
    }
}

fn request_input<F: Fn(i32) -> bool>(
    msg: &str,
    validity_checker: F,
) -> Result<Option<i32>, Box<dyn Error>> {
    loop {
        println!("{}", msg);
        let mut input = String::new();
        io::stdin().read_line(&mut input)?;
        if let Some(processed_input) = preprocess_input(&input) {
            if let Ok(int32) = processed_input.parse::<i32>() {
                if validity_checker(int32) {
                    return Ok(Some(int32));
                }
            }
        } else {
            return Ok(None);
        }
    }
}

fn init_area_func() -> Result<TypedFunc<(i32, i32), f32>, Box<dyn Error>> {
    let store = Store::default();
    let mut linker = Linker::new(&store);
    // Use linker for named imports
    linker.func("math", "pi", || -> f32 { std::f32::consts::PI })?;
    let wasm_path = "../wasm-guest/target/wasm32-unknown-unknown/release/wasm_guest.wasm";
    let module = Module::from_file(store.engine(), wasm_path)?;
    let instance = linker.instantiate(&module)?;
    let area_func = instance.get_typed_func::<(i32, i32), f32>("area")?;
    Ok(area_func)
}

fn main() -> Result<(), Box<dyn Error>> {
    let area_func = init_area_func()?;
    println!("This is the area calculator. Type 'close' at any point to close this program.");
    loop {
        let shape;
        let line_segment;
        let msg1 = "Enter shape (1 for square, 2 for circle):";
        let msg2 = "Enter line segment (integer):";
        if let Some(x) = request_input(msg1, |x| [1, 2].contains(&x))? {
            shape = x;
        } else {
            break;
        }
        if let Some(x) = request_input(msg2, |_| true)? {
            line_segment = x;
        } else {
            break;
        }
        let res = area_func.call((line_segment, shape))?;
        println!("Area for shape: {}", res);
    }
    Ok(())
}
