;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; (exec-path-from-shell-initialize)
(require 'doom-themes)
;; (global-visual-line-mode t)
;; (setq doom-font (font-spec :family "iosevka ss04" :size 17))
;; (setq doom-font (font-spec :family "novamono for powerline" :size 17))
(setq doom-font (font-spec :family "Liga novamono" :size 17))
;; (setq doom-font (font-spec :family "roboto mono for powerline" :size 17))
;; (setq doom-font (font-spec :family "cascadia code" :size 17))
;; (setq doom-font (font-spec :family "Vicrtor Mono" :size 17 :style "medium"))
;; (setq doom-font (font-spec :family "monoid" :size 15 :style "retina"))
;; (setq doom-font (font-spec :family "iosevka ss04" :size 17))
;; (setq doom-font (font-spec :family "fira code" :size 16 :weight 'light))
;; (setq doom-font (font-spec :family "monaco" :size 17))
;; (setq doom-font (font-spec :family "Hasklig" :size 17 :weight 'light))
;; (setq doom-font (font-spec :family "spacemono NF" :size 17))
(setq doom-themes-enable-bold nil
      doom-themes-enable-italic nil)
(display-time-mode 1)
(setq display-time-default-load-average nil)
(display-battery-mode 1)
(setq display-time-format  "%d/%m  %I:%M%p ")
(setq-default line-spacing 0.2)
(mac-auto-operator-composition-mode)

;; (load-theme `zach t)
(load-theme `zaiste t)
;; (load-theme `doom-molokai t)


;; avy keybindings
(setq avy-timeout-seconds 30)
(map!
      :m  "gs"    #'+evil/easymotion  ; lazy-load `evil-easymotion'
      (:after evil-easymotion
        :map evilem-map
        "l" #'evil-avy-goto-line))
