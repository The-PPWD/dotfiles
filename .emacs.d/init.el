;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Download goto-chg
(unless (package-installed-p 'goto-chg)
  (package-install 'goto-chg))

;; Enable goto-chg
(require 'goto-chg)

;; Download evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Set before enabling evil
(setq evil-undo-system 'undo-redo)
(setq evil-want-keybinding nil)

;; Enable evil
(require 'evil)
(evil-mode 1)

;; Download evil-collection
(unless (package-installed-p 'evil-collection)
  (package-install 'evil-collection))

;; Enable evil-collection
(require 'evil-collection)
(evil-collection-init)

