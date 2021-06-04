use std::collections::HashMap;
use std::error::Error;
use std::io;
use wasmtime::*;

const OPERATIONS: [(&str, &str); 5] = [
    ("add", "+"),
    ("sub", "-"),
    ("div", "/"),
    ("mul", "*"),
    ("mod", "%"),
];

fn init_funcs() -> Result<HashMap<String, TypedFunc<(i32, i32), i32>>, Box<dyn Error>> {
    let store = Store::default();
    let module = Module::from_file(store.engine(), "../calc.wasm")?;
    let instance = Instance::new(&store, &module, &[])?;
    let mut funcs = HashMap::new();
    for (name, symbol) in &OPERATIONS {
        let func = instance.get_typed_func::<(i32, i32), i32>(name)?;
        funcs.insert(String::from(*symbol), func);
    }
    Ok(funcs)
}

fn process_input(
    funcs: &HashMap<String, TypedFunc<(i32, i32), i32>>,
    input: String,
) -> Result<bool, Trap> {
    if input.trim() == "close" {
        return Ok(false);
    }
    let items: Vec<&str> = input.trim().split(' ').collect();
    let mut terms: Vec<i32> = Vec::new();
    let mut func: Option<&TypedFunc<(i32, i32), i32>> = None;
    for (i, item) in items.iter().enumerate() {
        if i % 2 == 0 {
            if let Ok(term) = item.parse::<i32>() {
                terms.push(term);
            }
        } else if let Some(x) = funcs.get(*item) {
            func = Some(x);
        }
    }
    if terms.len() == 2 {
        if let Some(x) = func {
            println!("Result: {}", x.call((terms[0], terms[1]))?);
        }
    }
    Ok(true)
}

fn main() -> Result<(), Box<dyn Error>> {
    let funcs = init_funcs()?;
    let mut keep_going = true;
    while keep_going {
        let mut input = String::new();
        println!("Enter a space-separated calculation (type 'close' to exit):");
        io::stdin().read_line(&mut input)?;
        keep_going = process_input(&funcs, input)?;
    }
    Ok(())
}
