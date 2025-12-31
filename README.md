# lsp-pyrefly

[![License](http://img.shields.io/:License-GPL3-blue.svg)](LICENSE)

lsp-mode client for the [Pyrefly](https://pyrefly.org) Python type checker.

> This package is a fork of [lsp-pyright](https://github.com/emacs-lsp/lsp-pyright).

## Requirements

- Emacs 28.1+
- [lsp-mode](https://github.com/emacs-lsp/lsp-mode)
- [Pyrefly](https://pyrefly.org/en/docs/installation/) installed and available on PATH

## Installation

Install Pyrefly:

```bash
pip install pyrefly
# or
uv pip install pyrefly
```

### use-package

```emacs-lisp
(use-package lsp-pyrefly
  :ensure t
  :hook ((python-mode python-ts-mode) . lsp-deferred))
```

### Manual

```emacs-lisp
(require 'lsp-pyrefly)
(add-hook 'python-mode-hook #'lsp-deferred)
(add-hook 'python-ts-mode-hook #'lsp-deferred)
```

## Configuration

Pyrefly is configured via `pyrefly.toml` or `[tool.pyrefly]` in `pyproject.toml`. See the [Pyrefly configuration docs](https://pyrefly.org/en/docs/configuration/).

## Features

All standard LSP features are supported via Pyrefly:

- Diagnostics (errors, warnings, hints)
- Go to definition / type definition / implementation
- Find references
- Hover information
- Completions
- Signature help
- Rename
- Document/workspace symbols
- Inlay hints
- Semantic highlighting
- Call hierarchy

## License

GPL-3.0+
