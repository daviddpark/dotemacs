(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar pkgs '(ag cl clojure-mode helm helm-git json-mode magit markdown-mode nrepl
	       org-plus-contrib org-present paredit pymacs rcirc restclient virtualenv))
(dolist (p pkgs)
  (when (not (package-installed-p p))
    (package-install p)))

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

;; backup policies
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

;; org-mode
;; (require 'org-install)
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; rcirc
(setq rcirc-default-nick "daviddpark")
(setq rcirc-default-user-name "daviddpark")
(setq rcirc-default-full-name "David Park")
(eval-after-load 'rcirc '(require 'rcirc-notify))
(add-hook 'rcirc-mode-hook (lambda () (flyspell-mode 1) (rcirc-track-minor-mode 1)))
(setq rcirc-server-alist
      '(("irc.freenode.net" :channels ("#clojure" "#python" "#immutant"))))
(if (file-exists-p "~/.rcirc-authinfo")
    (setq rcirc-authinfo (with-temp-buffer
                           (insert-file-contents-literally "~/.rcirc-authinfo")
                           (read (current-buffer)))))

;; nrepl
;; Make C-c C-z switch to the *nrepl* buffer in the current window:
(add-to-list 'same-window-buffer-names "*nrepl*")

;; cljs
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

;; paredit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'clojure-mode-hook          #'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(helm-mode 1)
(show-paren-mode 1)
(setq show-paren-delay 0)
;; TODO: Learn to use org-mode

;; TODO restclient, see dotfiles project
;; (require 'restclient)
;; (add-to-list 'auto-mode-alist '("\.rest$" . restclient-mode))

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)
