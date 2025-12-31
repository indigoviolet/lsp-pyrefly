;;; lsp-pyrefly.el --- Python LSP client using Pyrefly -*- lexical-binding: t; -*-

;; Copyright (C) 2025 emacs-lsp maintainers

;; Author: Venky Iyer
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1") (lsp-mode "7.0"))
;; Homepage: https://github.com/indigoviolet/lsp-pyrefly
;; Keywords: languages, tools, lsp

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;;  Minimal Pyrefly language server client for lsp-mode.
;;  Configuration is done externally via pyrefly.toml or pyproject.toml.
;;  Pyrefly must be installed and available on PATH.
;;
;;; Code:

(require 'lsp-mode)

(defgroup lsp-pyrefly nil
  "LSP support for Python using the Pyrefly language server."
  :group 'lsp-mode
  :link '(url-link "https://github.com/indigoviolet/lsp-pyrefly")
  :link '(url-link "https://pyrefly.org"))

(defcustom lsp-pyrefly-server-command '("pyrefly" "lsp")
  "Command to start the Pyrefly language server."
  :type '(repeat string)
  :group 'lsp-pyrefly)

(defun lsp-pyrefly--server-command ()
  "Return the command to start the Pyrefly language server."
  lsp-pyrefly-server-command)

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection #'lsp-pyrefly--server-command)
  :major-modes '(python-mode python-ts-mode)
  :priority 1
  :server-id 'pyrefly))

(provide 'lsp-pyrefly)
;;; lsp-pyrefly.el ends here
