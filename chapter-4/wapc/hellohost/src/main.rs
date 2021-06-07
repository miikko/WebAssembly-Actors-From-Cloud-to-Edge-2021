extern crate wapc;
use std::error::Error;
use std::io;
use wapc::WapcHost;
use wasmtime_provider::WasmtimeEngineProvider;

fn request_input(msg: &str) -> Result<String, Box<dyn Error>> {
    println!("{}", msg);
    let mut input = String::new();
    io::stdin().read_line(&mut input)?;
    Ok(String::from(input.trim()))
}

fn handle_callback(
    _binding: &str,
    _namespace: &str,
    operation: &str,
    payload: &[u8],
) -> Result<Vec<u8>, Box<dyn Error + Send + Sync>> {
    if operation == "GetGreeting" {
        Ok(payload.to_vec())
    } else {
        Err("Unsupported host call!".into())
    }
}

fn load_file() -> Result<Vec<u8>, Box<dyn Error + Send + Sync>> {
    use std::fs::File;
    use std::io::Read;

    let mut f = File::open("../helloguest/target/wasm32-unknown-unknown/release/helloguest.wasm")?;
    let mut buffer = Vec::new();
    f.read_to_end(&mut buffer)?;
    Ok(buffer)
}

pub fn main() -> Result<(), Box<dyn Error + Send + Sync>> {
    let module = load_file()?;
    let engine = WasmtimeEngineProvider::new(&module, None);

    let greeting = request_input("Enter greeting:").unwrap();
    let name = request_input("Enter name:").unwrap();

    let host = WapcHost::new(Box::new(engine), move |_id, bd, ns, op, _payload| {
        handle_callback(bd, ns, op, greeting.as_bytes())
    })?;
    let res = host.call("SayHello", name.as_bytes())?;
    let s = std::str::from_utf8(&res)?;
    println!("{}", s);
    Ok(())
}
