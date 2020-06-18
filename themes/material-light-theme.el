;;; material-light-theme.el
(require 'doom-themes)

(defgroup material-light-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme material-light
  "A light theme inspired by Bluloco"

  ;; name        default   256       16
  ((bg         '("#f0f0f0" nil       nil            ))
   (bg-alt     '("#fafafa" nil       nil            ))
   (base0      '("#efefef" "#efefef" "white"        ))
   (base1      '("#e7e7e7" "#e7e7e7" "brightblack"  ))
   (base2      '("#dfdfdf" "#dfdfdf" "brightblack"  ))
   (base3      '("#c6c7c7" "#c6c7c7" "brightblack"  ))
   (base4      '("#90A4AE" "#90A4AE" "brightblack"  ))
   (base5      '("#484a42" "#424242" "brightblack"  ))
   (base6      '("#434343" "#2e2e2e" "brightblack"  ))
   (base7      '("#2c2f34" "#1e1e1e" "brightblack"  ))
   (base8      '("#1b2229" "black"   "black"        ))
   (fg         '("#81939c" "#424242" "black"        ))
   (fg-alt     '("#c6c7c7" "#c7c7c7" "brightblack"  ))

   (grey       '("#6182B8" "#6182B8" "brightblack"  ))
   (red        '("#f55151" "#e45649" "red"          ))
   ;; (red        '("#f07171" "#e45649" "red"          ))
   (orange     '("#ff9354" "#F76D47" "brightred"    ))
   ;; (orange     '("#da8548" "#dd8844" "brightred"    ))
   (green      '("#91B859" "#91B859" "green"        ))
   (teal       '("#39ADB5" "#39ADB5" "brightgreen"  ))
   (yellow     '("#e3e320" "#c5a332" "yellow"       ))
   (baby-blue  '("#d2ecff" "#d2ecff" "brightblue"   ))
   (blue       '("#39ADB5" "#0098dd" "brightblue"   ))
   (dark-blue  '("#275fe4" "#275fe4" "blue"         ))
   (magenta    '("#7C4DFF" "#a626a4" "magenta"      ))
   (violet     '("#7C4DFF" "#7C4DFF" "brightmagenta"))
   (cyan       '("#0184bc" "#0184bc" "brightcyan"   ))
   (dark-cyan  '("#005478" "#005478" "cyan"         ))
   ;; another cyan: 4cbf99

   (highlight      blue)
   (vertical-bar   base2)
   (selection      dark-blue)
   (builtin        teal)
   (comments       (doom-lighten base4 0.15))
   (doc-comments   (doom-lighten comments 0.15))
   (constants      grey)
   (functions      grey)
   (keywords       teal)
   (methods        cyan)
   (operators      teal)
   (type           violet)
   (strings        green)
   (variables      red)
   (numbers        orange)
   (region         baby-blue)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   (modeline-fg     nil)
   (modeline-fg-alt (doom-blend violet base4 0.2))

   (modeline-bg base1)
   (modeline-bg-l base2)
   (modeline-bg-inactive (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1))))

  ((font-lock-comment-face
    :foreground comments)
    ;; :weight 'bold)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments
    :weight 'regular)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground base8)

   (doom-modeline-bar :background highlight)
   (doom-modeline-project-dir :foreground violet :weight 'bold)
   (doom-modeline-buffer-file :weight 'regular)

   (mode-line :background modeline-bg :foreground modeline-fg)
   (mode-line-inactive :background modeline-bg-inactive :foreground modeline-fg-alt)
   (mode-line-emphasis :foreground highlight)

   (magit-blame-heading :foreground orange :background bg-alt)
   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
   (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.2) :bold bold)

   (evil-ex-lazy-highlight :background baby-blue)

   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   (markdown-code-face       :background base1)
   (mmm-default-submode-face :background base1)

   (org-block            :background base0)
   (org-level-1          :foreground base8 :weight 'bold :height 1.25)
   (org-level-2          :foreground base6 :weight 'bold :height 1.1)
   (org-level-3          :foreground base5 :bold bold :height 1.0)
   (org-level-4          :foreground base4 :bold bold :height 1.0)
   (org-ellipsis         :underline nil :background bg-alt     :foreground grey)
   (org-quote            :background base1)
   (org-checkbox-statistics-done :foreground base2 :weight 'normal)
   (org-done nil)
   (org-done :foreground green :weight 'normal)
   (org-headline-done :foreground base3 :weight 'normal :strike-through t)
   (org-date :foreground orange)
   (org-code :foreground dark-blue)
   (org-special-keyword :foreground base8 :underline t)
   (org-document-title :foreground base8 :weight 'bold :height 1.5)
   (org-document-info-keyword :foreground base4 :height 0.75)
   (org-block-begin-line :foreground base4 :height 0.65)
   (org-meta-line :foreground base4 :height 0.65)
   (org-list-dt :foreground grey)

   (org-todo-keyword-faces
    '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
      ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
      ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
      ("DONE" :foreground "#50a14f" :weight normal :underline t)
      ("CANCELLED" :foreground "#ff6480" :weight normal :underline t)))

   (org-priority-faces '((65 :foreground "#e45649")
                         (66 :foreground "#da8548")
                         (67 :foreground "#0098dd")))

   (helm-candidate-number :background blue :foreground bg)

   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)

   (wgrep-face :background base1)

   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))

   (tooltip :background base1 :foreground fg)

   (ivy-posframe :background base0)

   (lsp-ui-doc-background      :background base0)
   (lsp-face-highlight-read    :background (doom-blend red bg 0.3))
   (lsp-face-highlight-textual :inherit 'lsp-face-highlight-read)
   (lsp-face-highlight-write   :inherit 'lsp-face-highlight-read)


   )

  ;; --- extra variables ---------------------
  ;;()
  )

(after! org
  (setq
   org-bullets-bullet-list '("⁖")
   org-ellipsis " ... "
   org-todo-keyword-faces
   '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
     ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
     ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
     ("DONE" :foreground "#50a14f" :weight normal :underline t)
     ("CANCELLED" :foreground "#ff6480" :weight normal :underline t))
   org-priority-faces '((65 :foreground "#e45649")
                        (66 :foreground "#da8548")
                        (67 :foreground "#0098dd"))
   ))

;;; material-light-theme.el ends here
