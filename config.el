;;; .doom.d/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here
;; (exec-path-from-shell-initialize)
;; (global-visual-line-mode t)
(setq doom-themes-enable-bold nil
      doom-font (font-spec :family "liga novamono" :size 16)
      doom-themes-enable-italic nil
      display-time-default-load-average nil
      display-time-format  "%d/%m  %I:%M%p "
      display-line-numbers-type 'relative
      ac-show-menu-immediately-on-auto-complete t
      ac-ignore-case 'smart
      )
(display-time-mode 1)
(display-battery-mode 1)
(setq-default line-spacing 0.3)
(mac-auto-operator-composition-mode)
(ac-config-default)
;; (load-theme `zach t)
(load-theme `material-light t)

;; Make font a bit smaller
(defun decrease-size ()
  (text-scale-set -1.5))

;; Make font a bit bigger
(defun increase-size ()
  (text-scale-set 1))

(add-hook `eshell-mode-hook `increase-size)
(add-hook `org-mode-hook `increase-size)
;; (add-hook `cc-mode-hook `decrease-size)
;; (add-hook `emacs-lisp-mode-hook `decrease-size)

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
;; "Victor Mono"
;; "monoid"
;; "iosevka ss04"
;; "fira code"
;; "monaco"
;; "Hasklig"
;; "spacemono NF"
;; "Liga novamono"

;; Things that I might want to change later
;; (setq evil-normal-state-cursor '(box "violet")
;;       evil-insert-state-cursor '(bar "medium sea green")
;;       evil-visual-state-cursor '(hollow "orange"))
;; (custom-set-faces
;;  `(rainbow-delimiters-depth-1-face ((t (:foreground ,(doom-color 'teal)))))
;;  `(rainbow-delimiters-depth-2-face ((t (:foreground ,(doom-color 'teal)))))
;;  `(rainbow-delimiters-depth-3-face ((t (:foreground ,(doom-color 'teal)))))
;;  )
;; (set-face-background 'ac-candidate-face "lightgray")
;; (set-face-underline 'ac-candidate-face "darkgray")
;; (set-face-background 'ac-selection-face "steelblue")
