;; UI stuff
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

;; Coding QOL stuff
(show-paren-mode 1)
(setq scroll-margin 5
      scroll-conservatively 100)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq auto-save-default nil)
(setq create-lockfiles nil)

(windmove-default-keybindings)


;; Packages
(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("gnu"   . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

;; Emacs git interface
(use-package magit
  :ensure t)

;; Pretty colours
(use-package gruvbox-theme
  :ensure t
  :config (load-theme 'gruvbox-dark-soft t))

;; Clojure REPL integration
(use-package cider
  :ensure t
  :config
  (setq cider-result-overlay-position 'at-point))

;; Easy navigation and key binds
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package gptel
  :ensure t
  :config
  (add-hook 'gptel-post-stream-hook 'gptel-auto-scroll)
  )
