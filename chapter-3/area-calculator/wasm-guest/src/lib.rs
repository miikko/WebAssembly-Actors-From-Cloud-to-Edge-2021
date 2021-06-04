#[link(wasm_import_module = "math")]
extern "C" {
    pub fn pi() -> f32;
}

#[no_mangle]
extern "C" fn area(line_segment: i32, shape: i32) -> f32 {
    let factor: f32;
    // Square
    if shape == 1 {
        factor = 1.0;
    // Circle
    } else if shape == 2 {
        unsafe { factor = pi() }
    } else {
        return -1.0;
    }
    factor * (line_segment.pow(2) as f32)
}
