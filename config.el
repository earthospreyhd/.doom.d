;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; (exec-path-from-shell-initialize)
(require 'doom-themes)
(global-visual-line-mode t)
;; (setq-default word-wrap t)
(setq doom-font (font-spec :family "iosevka ss04" :size 18 :weight 'light))
;; (setq doom-font (font-spec :family "iosevka ss04" :size 17))
(setq doom-themes-enable-bold nil
      doom-themes-enable-italic nil)

(setq-default line-spacing 0.2)
(mac-auto-operator-composition-mode)

(load-theme `zach t)
;; (load-theme `doom-molokai t)
;; (load-theme `zaiste t)
