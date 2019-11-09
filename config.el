;;; .doom.d/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here
;; (exec-path-from-shell-initialize)
(require 'doom-themes)
;; (global-visual-line-mode t)
(setq doom-themes-enable-bold nil
      doom-font (font-spec :family "Liga novamono" :size 17)
      doom-themes-enable-italic nil
      display-time-default-load-average nil
      display-time-format  "%d/%m  %I:%M%p "
      display-line-numbers-type 'relative
      )
(display-time-mode 1)
(display-battery-mode 1)
(setq-default line-spacing 0.2)
(mac-auto-operator-composition-mode)
;; (load-theme `zach t)
(load-theme `zaiste t)
;; (load-theme `doom-molokai t)

;; Make font a bit bigger for eshell
(defun set-size ()
  (text-scale-set 1))
(add-hook `eshell-mode-hook `set-size)
(add-hook `org-mode-hook `set-size)

;; avy settings
(setq avy-timeout-seconds 30)
(map!
 :m  "gs"    #'+evil/easymotion  ; lazy-load `evil-easymotion'
 (:after evil-easymotion
   :map evilem-map
   "l" #'evil-avy-goto-line))
;; Fonts I like
;; "iosevka ss04"
;; "novamono for powerline"
;; "roboto mono for powerline"
;; "cascadia code"
;; "Vicrtor Mono"
;; "monoid"
;; "iosevka ss04"
;; "fira code"
;; "monaco"
;; "Hasklig"
;; "spacemono NF"
;; "Liga novamono"
