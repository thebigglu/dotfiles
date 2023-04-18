(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

(use-package tron-legacy-theme
  :config
  (setq tron-legacy-theme-vivid-cursor t)
  (load-theme 'tron-legacy t))

(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs)

(use-package eglot
  :init
  (setq eglot-ignored-server-capabilities '(:hoverProvider :documentHighlightProvider))
  :hook
  ((js-mode typescript-mode) . eglot-ensure))

(use-package helm
  :init (helm-mode t)
  :demand
  :bind
  ("M-x" . helm-M-x)
  ("C-x r b" . helm-filtered-bookmarks)
  ("C-x C-f" . helm-find-files))

(use-package flycheck
  :init (global-flycheck-mode))

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package typescript-mode)
(use-package yaml-mode)
(use-package json-mode)
(use-package dockerfile-mode)
(use-package magit)

;; credentials
(setq user-full-name    "Vasilii Ivanov")
(setq user-mail-address "thebigglu@gmail.com")

;; UI
(tooltip-mode      -1)
(menu-bar-mode     -1)
(tool-bar-mode     -1)
(scroll-bar-mode   -1)
(blink-cursor-mode -1)
(set-default 'truncate-lines t)
(setq use-dialog-box nil)
(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq frame-title-format "Emacs %b")

;; indentation
(setq tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default js-indent-level tab-width)
(setq-default electric-indent-inhibit t)
(setq backward-delete-char-untabify-method 'hungry)

;; face
(set-face-attribute 'default nil :height 151)

;; no backups and lock files
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq create-lockfiles nil)

;; new line/spaces
(setq require-final-newline t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; encoding
(set-default-coding-systems 'utf-8)

;; switch buffer settings
(global-set-key [remap list-buffers] 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)

;; delete region when typing
(delete-selection-mode t)

;; key for imenu
(global-set-key (kbd "M-i") 'imenu)

;; disable js-find-symbol because the eglot
(global-set-key [remap js-find-symbol] 'xref-find-definitions)

;; auto pair brackets
(electric-pair-mode t)

;; enable search count
(setq isearch-lazy-count t)

;; enable column number
(setq column-number-mode t)
