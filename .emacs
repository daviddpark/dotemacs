(setq c-basic-offset 4)
(setq tab-width 4)
(setq intent-tabs-mode nil)
(turn-on-font-lock)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;(add-to-list 'load-path "~/.emacs.d/site-lisp/")

(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

