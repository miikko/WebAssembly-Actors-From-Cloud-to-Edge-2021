use std::error::Error;
use std::io;
use wasmtime::*;

fn write_bytes_to_memory(
    memory: &Memory,
    ptr: usize,
    bytes: &[u8],
) -> Result<(), MemoryAccessError> {
    memory.write(ptr, bytes)?;
    Ok(())
}

fn get_custom_greeting_from_memory(
    memory: &Memory,
    ptr: usize,
    len: usize,
) -> Result<String, Box<dyn Error>> {
    let bytes = &mut vec![0u8; len];
    memory.read(ptr, bytes)?;
    let greeting = std::str::from_utf8(&bytes)?;
    Ok(String::from(greeting))
}

fn request_input(msg: &str) -> Result<String, Box<dyn Error>> {
    println!("{}", msg);
    let mut input = String::new();
    io::stdin().read_line(&mut input)?;
    Ok(String::from(input.trim()))
}

fn main() -> Result<(), Box<dyn Error>> {
    let wasm_file_path = "../memoryguest/target/wasm32-unknown-unknown/debug/memoryguest.wasm";
    let store = Store::default();
    let module = Module::from_file(store.engine(), wasm_file_path)?;
    let instance = Instance::new(&store, &module, &[])?;
    let memory = instance.get_memory("memory").unwrap();

    // Get the pointer (index) of the buffer
    let getptr = instance.get_typed_func::<(), i32>("get_buffer_ptr")?;
    let ptr = getptr.call(())? as usize;

    let greeting = request_input("Enter greeting:")?;
    let greeting_bytes = greeting.as_bytes();
    let name = request_input("Enter name:")?;
    let name_bytes = name.as_bytes();

    // Write custom greeting to memory
    write_bytes_to_memory(&memory, ptr, greeting_bytes)?;
    write_bytes_to_memory(&memory, ptr + greeting_bytes.len(), name_bytes)?;

    // tell the guest we set the name
    let set_custom_greeting = instance.get_typed_func::<(i32, i32), i32>("set_custom_greeting")?;
    let new_len =
        set_custom_greeting.call((greeting_bytes.len() as i32, name_bytes.len() as i32))?;
    let custom_greeting = get_custom_greeting_from_memory(&memory, ptr, new_len as usize)?;
    println!("Response: {}", custom_greeting);

    Ok(())
}
