;; Set the theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'bluegray t)

(set-frame-font "Ubuntu Mono 10")


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
