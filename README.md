# WebAssembly Actors: From Cloud to Edge 2021

[**WebAssembly instruction set**](https://webassembly.github.io/spec/core/appendix/index-instructions.html)

Link to [course](https://learning.edx.org/course/course-v1:LinuxFoundationX+LFD134x+1T2021/home).

## Tools

### [WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt)

#### Installation

```
$ npm i wabt
```

_Commands need to be run through `npx`_

OR download directly from [GitHub](https://github.com/WebAssembly/wabt/releases)

#### Contents

- [**wat2wasm**](https://webassembly.github.io/wabt/doc/wat2wasm.1.html): translate from [WebAssembly text format](https://webassembly.github.io/spec/core/text/index.html) to the [WebAssembly binary format](https://webassembly.github.io/spec/core/binary/index.html)
- [**wasm2wat**](https://webassembly.github.io/wabt/doc/wasm2wat.1.html): the inverse of wat2wasm, translate from the binary format back to the text format (also known as a .wat)
- [**wasm-objdump**](https://webassembly.github.io/wabt/doc/wasm-objdump.1.html): print information about a wasm binary. Similiar to objdump.
- [**wasm-interp**](https://webassembly.github.io/wabt/doc/wasm-interp.1.html): decode and run a WebAssembly binary file using a stack-based interpreter
- [**wasm-decompile**](https://webassembly.github.io/wabt/doc/wasm-decompile.1.html): decompile a wasm binary into readable C-like syntax.
- [**wat-desugar**](https://webassembly.github.io/wabt/doc/wat-desugar.1.html): parse .wat text form as supported by the spec interpreter (s-expressions, flat syntax, or mixed) and print "canonical" flat format
- [**wasm2c**](https://webassembly.github.io/wabt/doc/wasm2c.1.html): convert a WebAssembly binary file to a C source and header
- [**wasm-strip**](https://webassembly.github.io/wabt/doc/wasm-strip.1.html): remove sections of a WebAssembly binary file
- [**wasm-validate**](https://webassembly.github.io/wabt/doc/wasm-validate.1.html): validate a file in the WebAssembly binary format
- [**wast2json**](https://webassembly.github.io/wabt/doc/wast2json.1.html): convert a file in the wasm spec test format to a JSON file and associated wasm binary files
- [**wasm-opcodecnt**](https://webassembly.github.io/wabt/doc/wasm-opcodecnt.1.html): count opcode usage for instructions
- [**spectest-interp**](https://webassembly.github.io/wabt/doc/spectest-interp.1.html): read a Spectest JSON file, and run its tests in the interpreter

### [Wasmtime](https://github.com/bytecodealliance/wasmtime)

A standalone runtime for WebAssembly

#### Installation

Linux, macOS, Windows with WSL:

```
$ curl https://wasmtime.dev/install.sh -sSf | bash
```

OR download directly from [GitHub](https://github.com/bytecodealliance/wasmtime/releases)

## Compiling Rust lib-crates to WebAssembly

**NOTE** In order for a function defined in Rust to be usable in other languages, it needs to have a `#[no_mangle]` annotation and use the `extern` keyword ([More info](https://doc.rust-lang.org/book/ch19-01-unsafe-rust.html#calling-rust-functions-from-other-languages)).

```
#[no_mangle]
extern "C" fn call_from_c() {
    println!("This function is called from C!");
}
```

1. [Install Rust](https://www.rust-lang.org/tools/install)
1. Add WebAssembly as a Rust compiler target:
   ```
   $ rustup target add wasm32-unknown-unknown wasm32-wasi
   ```
1. Move to your Rust package in the terminal
1. Specify lib-crate type in `Cargo.toml`:

   ```
   # Cargo.toml
   ...omitted

   [lib]
   # Used when compiling lib-crates to other languages
   crate-type = ["cdylib"]

   ...omitted
   ```

1. Compile to WebAssembly:
   ```
   $ cargo build --target wasm32-unknown-unknown
   ```
1. Compiled `.wasm` file can be found from `target/wasm32-unknown-unknown/`.

## Using wasmtime for hosting WebAssembly in Rust

See example projects: [simple-calculator](./chapter-3/rust-host), [interactive-calculator](./chapter-3/interactive-calculator), [area-calculator](./chapter-3/area-calculator).

## Using waPC for communication between WebAssembly guest and a (Rust) host

See [example project](./chapter-4/wapc).

In the example project, the communication is established by defining and registering functions in the WebAssembly guest and the Rust host. The guest function is called first which in turn calls the host function. At the end the guest function returns a value (bytes for the greeting string).

### Simplified logical flow

1. The host initiates a function call exchange with the guest by invoking the ???guest call??? export. This export takes two parameters: the length of the operation name (a string), and the length of the binary payload.
1. The guest internally allocates two buffers (again, the host does not care how this happens) and then tells the host the linear memory address offsets of the two buffers for the operation name and payload via the ???guest request??? function.
1. In response to the ???guest request??? function call, the host loads the request data for the call into linear memory at the locations indicated by the given pointers.
1. The guest module then performs the main body of its logic
   - Optionally, the guest module can then make requests of the host via the ???host call??? function. The host call function accepts many parameters, including the pointer and byte length of the operation name, payload (message body), and namespace (used for optional disambiguation between operations).
1. The guest either informs the host where to find a response via the ???guest response??? function or it informs the host where to find an error via ???guest error???.
1. The guest function returns 0 for failure, 1 for success. Note that success cannot be misinterpreted by default values.
1. The host inspects the numeric return value, and then retrieves either the success bytes or failure bytes accordingly. The failure bytes can be used by higher-level projects to return robust error structures.
