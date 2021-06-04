use std::error::Error;
use wasmtime::*;

fn main() -> Result<(), Box<dyn Error>> {
    let store = Store::default();
    let mut linker = Linker::new(&store);
    // Use linker for named imports
    linker.func("utilities", "random", || -> i32 {
        use rand::Rng;
        let mut rng = rand::thread_rng();
        let num = rng.gen_range(0..=100);
        println!("Random num: {}", num);
        num
    })?;
    let module = Module::from_file(
        store.engine(),
        "../importer/target/wasm32-unknown-unknown/release/importer.wasm",
    )?;
    let instance = linker.instantiate(&module)?;
    let addto = instance.get_typed_func::<i32, i32>("addto")?;
    println!("Result: {}", addto.call(10)?);
    Ok(())
}
