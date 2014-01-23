;; Set the theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
   (color-theme-initialize)
   (color-theme-desert)))

(set-default-font "ProggySquareTTSZ 16")

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode 1)

(global-hl-line-mode 1)


;; make whitespace-mode use just basic coloring
(setq-default whitespace-line-column 90)
(setq whitespace-style (quote
 (face spaces tabs trailing empty tab-mark
  space-before-tab space-after-tab lines-tail)))
(global-whitespace-mode 1)

(custom-set-faces
 '(css-property ((t (:inherit font-lock-variable-name-face :foreground "#ffff88"))))
 '(font-lock-string-face ((t (:foreground "#ffd0d0"))))
 '(font-lock-warning-face ((t (:background "gold" :foreground "black" :weight bold))))
 '(hl-line ((t (:background "#2a2a2a"))))
 '(hl-paren-face ((t (:weight bold))) t)
 '(rainbow-delimiters-depth-1-face ((((background dark)) (:foreground "#f00"))))
 '(rainbow-delimiters-depth-2-face ((((background dark)) (:foreground "#66e"))))
 '(rainbow-delimiters-depth-3-face ((((background dark)) (:foreground "#e66"))))
 '(rainbow-delimiters-depth-4-face ((((background dark)) (:foreground "#6f6"))))
 '(rainbow-delimiters-depth-5-face ((((background dark)) (:foreground "#ee6"))))
 '(rainbow-delimiters-depth-6-face ((((background dark)) (:foreground "#6ee"))))
 '(rainbow-delimiters-depth-7-face ((((background dark)) (:foreground "#e6e"))))
 '(rainbow-delimiters-depth-8-face ((((background dark)) (:foreground "#ff0"))))
 '(rainbow-delimiters-depth-9-face ((((background dark)) (:foreground "#0f0"))))
 '(rainbow-delimiters-unmatched-face ((((background dark)) (:background "#dd3" :foreground "#ff090B"))))
 '(show-paren-match ((t (:foreground "red" :weight bold))))
 '(show-paren-mismatch ((t (:foreground "yellow" :weight bold))))
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil)))))
