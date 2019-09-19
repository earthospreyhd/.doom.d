;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; (exec-path-from-shell-initialize)
(require 'doom-themes)
(global-visual-line-mode t)
(setq doom-font (font-spec :family "Victor Mono" :size 16 :style "regular"))
;; (setq doom-font (font-spec :family "iosevka ss04" :size 18 :weight 'light))
;; (setq doom-font (font-spec :family "monoid" :size 15 :style "retina"))
;; (setq doom-font (font-spec :family "iosevka ss04" :size 17))
;; (setq doom-font (font-spec :family "fira code" :size 16))
(setq doom-themes-enable-bold nil
      doom-themes-enable-italic nil)

(setq-default line-spacing 0.2)
(mac-auto-operator-composition-mode)

(load-theme `zach t)
;; (load-theme `doom-molokai t)
;; (load-theme `zaiste t)
