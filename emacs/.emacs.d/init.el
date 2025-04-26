;; UI stuff
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

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

(use-package magit
  :ensure t)

(use-package gruvbox-theme
  :ensure t
  :config (load-theme 'gruvbox-dark-soft t))

