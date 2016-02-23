;; Set the theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'bluegray t)

(set-default-font "ProggySquareTTSZ 16")


;; Rainbow parens
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)


;; powerline
(require 'powerline)
(powerline-center-theme)


;; Highlight stuff in whitespace-mode
(setq-default whitespace-line-column 90)
(setq whitespace-style
      '(face spaces tabs trailing empty tab-mark
             space-before-tab space-after-tab lines-tail))
(global-whitespace-mode 1)
(global-hl-line-mode 1)


;; Change cursor color according to mode; inspired by
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically
(setq djcb-read-only-color       "gray")
;; valid values are t, nil, box, hollow, bar, (bar . WIDTH), hbar,
;; (hbar. HEIGHT); see the docs for set-cursor-type
(setq djcb-read-only-cursor-type 'hbar)
(setq djcb-overwrite-color       "#ff8888")
(setq djcb-overwrite-cursor-type 'box)
(setq djcb-normal-color          "#c4f2ff")
(setq djcb-normal-cursor-type    'bar)

(defun djcb-set-cursor-according-to-mode ()
  "change cursor color and type according to some minor modes."
  (cond
    (buffer-read-only
      (set-cursor-color djcb-read-only-color)
      (setq cursor-type djcb-read-only-cursor-type))
    (overwrite-mode
      (set-cursor-color djcb-overwrite-color)
      (setq cursor-type djcb-overwrite-cursor-type))
    (t
      (set-cursor-color djcb-normal-color)
      (setq cursor-type djcb-normal-cursor-type))))
(add-hook 'post-command-hook 'djcb-set-cursor-according-to-mode)


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
 '(whitespace-line ((t (:foreground "#ffffbb"))))
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil)))))
