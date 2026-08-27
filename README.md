# zed-raylang

[raylang](https://raylang.dev) support for the [Zed](https://zed.dev) editor.

- **Syntax highlighting** via [tree-sitter-raylang](https://github.com/ray-language/tree-sitter-raylang), plus outline, indentation and bracket matching.
- **Language server**: wires the real `ray lsp` from the raylang toolchain — diagnostics as you type, completions with signatures, hover docs, signature help, go-to-definition, rename and formatting.

## Requirements

The `ray` binary must be on your `PATH` (the extension also accepts the `raylang` alias). Install it from [raylang.dev](https://raylang.dev/#empezar).

## Installing

Once published: open Zed → Extensions (`cmd-shift-x`) → search "raylang" → Install.

### Dev install (from source)

1. Clone this repository.
2. In Zed: Extensions → **Install Dev Extension** → pick the cloned directory.

Zed compiles the Rust extension to WebAssembly and fetches the grammar automatically (Rust toolchain required for dev installs).

## License

MIT — see [LICENSE](LICENSE).
