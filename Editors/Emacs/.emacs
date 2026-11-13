;; -*- lexical-binding: t; -*-
(setq custom-file "~/.emacs.custom.el")
(load custom-file)

;M-x describe-char to check system fonts. Sadly, I cannot find a way to make Emacs use non-system fonts.
;(add-to-list 'default-frame-alist `(font . "Menlo-14"))
(add-to-list 'default-frame-alist `(font . "Hack-14"))
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode)
(tab-bar-mode 0)
(toggle-frame-fullscreen)
(ido-mode 1)
(ido-everywhere 1)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.local/")
(add-to-list 'load-path "~/.emacs.local/simpc-mode")
(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(setq backup-directory-alist '((".*" . "~/.emacs.d/Trash")))
