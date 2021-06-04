(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (import "utzlities" "random" (func $_ZN8importer6random17h83ed764604bfc7dfE (type 0)))
  (func $addto (type 1) (param i32) (result i32)
    call $_ZN8importer6random17h83ed764604bfc7dfE
    local.get 0
    i32.add)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 16)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048576))
  (global (;2;) i32 (i32.const 1048576))
  (export "memory" (memory 0))
  (export "addto" (func $addto))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2)))
