# WebAssembly Actors: From Cloud to Edge 2021

[Bookmark](https://learning.edx.org/course/course-v1:LinuxFoundationX+LFD134x+1T2021/block-v1:LinuxFoundationX+LFD134x+1T2021+type@sequential+block@2088e5f80e6f4fad8d0ea239f869fc51/block-v1:LinuxFoundationX+LFD134x+1T2021+type@vertical+block@da22a5a3dc964b6a9c35944eb1396f12)

[**WebAssembly instruction set**](https://webassembly.github.io/spec/core/appendix/index-instructions.html)

Link to [course](https://learning.edx.org/course/course-v1:LinuxFoundationX+LFD134x+1T2021/home).

# Tools

## [WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt)

### Installation

```
$ npm i wabt
```
*Commands need to be run through `npx`*

OR download directly from [GitHub](https://github.com/WebAssembly/wabt/releases)

### Contents

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

## [Wasmtime](https://github.com/bytecodealliance/wasmtime)

A standalone runtime for WebAssembly

### Installation

Linux, macOS, Windows with WSL:
```
$ curl https://wasmtime.dev/install.sh -sSf | bash
```

OR download directly from [GitHub](https://github.com/bytecodealliance/wasmtime/releases)
