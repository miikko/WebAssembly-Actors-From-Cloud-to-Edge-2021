const MEMORY_BUFFER_SIZE: usize = 100;
static mut BUFFER: [u8; MEMORY_BUFFER_SIZE] = [0; MEMORY_BUFFER_SIZE];

#[no_mangle]
pub extern "C" fn get_buffer_ptr() -> *const u8 {
    let pointer: *const u8 = { unsafe { BUFFER.as_ptr() } };
    pointer
}

#[no_mangle]
pub extern "C" fn set_custom_greeting(greeting_len: i32, name_len: i32) -> i32 {
    let greeting = unsafe { std::str::from_utf8(&BUFFER[..greeting_len as usize]).unwrap() };
    let name = unsafe {
        std::str::from_utf8(&BUFFER[greeting_len as usize..(greeting_len + name_len) as usize])
            .unwrap()
    };

    let custom_greeting = format!("{}, {}!", greeting, name);
    // Rust has a number of ways to do this more efficiently...
    // done "long hand" to illustrate what's happening
    unsafe {
        for (idx, byte) in custom_greeting.as_bytes().iter().enumerate() {
            BUFFER[idx] = *byte;
        }
    }
    custom_greeting.len() as i32
}
