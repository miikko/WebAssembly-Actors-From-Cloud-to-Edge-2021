// Annotation makes sure that add() function is compiled.
// Rust compiler optimizer might otherwise leave it out due to it not being called.
#[no_mangle]
extern "C" fn add(x: i32, y: i32) -> i32 {
    (x).wrapping_add(y)
}

#[no_mangle]
extern "C" fn sub(x: i32, y: i32) -> i32 {
    (x).wrapping_sub(y)
}

#[no_mangle]
extern "C" fn mul(x: i32, y: i32) -> i32 {
    (x).wrapping_mul(y)
}

#[no_mangle]
extern "C" fn div(x: i32, y: i32) -> i32 {
    if y == 0 {
        0
    } else {
        (x).wrapping_div(y)
    }
}
