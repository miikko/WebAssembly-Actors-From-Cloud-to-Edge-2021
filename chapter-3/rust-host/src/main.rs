use wasmtime::*;
use std::{error::Error};

fn main() -> Result<(), Box<dyn Error>> {
    let store = Store::default();
    let module = Module::from_file(store.engine(), "../calc.wasm")?;
    let instance = Instance::new(&store, &module, &[])?;
    let add = instance.get_typed_func::<(i32, i32), i32>("add")?;
    let res = add.call((3, 5))?;
    println!("Res: {}", res);
    Ok(())
}
