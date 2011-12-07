(setq c-basic-offset 4)
(setq tab-width 4)
(setq intent-tabs-mode nil)
(turn-on-font-lock)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0/")

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-matrix)))
