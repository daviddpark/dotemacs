(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1f392dc4316da3e648c6dc0f4aad1a87d4be556c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'tango-dark)

;; Load and configure SLIME
(add-to-list 'load-path "slime")
(require 'slime)
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(slime-setup '(slime-repl))

;; Load a major mode for editing Clojure code.
(add-to-list 'load-path "clojure-mode")
(require 'clojure-mode)
  (require 'clojure-test-mode) ;; requires slime

(setq org-directory "~/orgmode")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-mobile-inbox-for-pull "~/orgmode/orgmobileinbox.org")

