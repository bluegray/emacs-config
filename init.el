(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/cedet-1.1/")

(load "server")
(unless (server-running-p) (server-start))

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


;; Set the theme
(require 'color-theme)
(require 'color-theme-solarized)
(eval-after-load "color-theme"
  '(progn
   (color-theme-initialize)
   (color-theme-desert)))


(global-auto-revert-mode t)
(setq inhibit-splash-screen t)
(setq scroll-step 1)
(menu-bar-mode 1)
(set-default-font "ProggySquareTTSZ 16")
(require 'linum)
(global-linum-mode 1)
(column-number-mode 1)
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode 1)
(global-hl-line-mode 1)
(require 'git-emacs)
(require 'magit)
(require 'yasnippet)
(yas/global-mode 1)
(setq require-final-newline t)

(setq-default indent-tabs-mode nil)
(setq global-tab-width 2)
(setq css-indent-offset 2)

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; # http://stackoverflow.com/questions/9877180/emacs-ecb-alternative
;; For ECB to start
(setq stack-trace-on-error t)

(require 'auto-highlight-symbol)
;(global-auto-highlight-symbol-mode t)
(global-set-key (kbd "C-e") 'ahs-edit-mode)
(global-set-key (kbd "C-<f3>") 'auto-highlight-symbol-mode)

(require 'highlight-symbol)
(global-set-key (kbd "<f2>") 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)

(require 'paredit)

(show-paren-mode 1)
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
  (lambda nil (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(load-file "~/.emacs.d/plugins/highlight-indentation.el")
(highlight-indentation-mode 1)
(highlight-indentation-current-column-mode 1)

;; make whitespace-mode use just basic coloring
(setq-default whitespace-line-column 90)
(setq whitespace-style (quote
 (face spaces tabs trailing empty tab-mark
  space-before-tab space-after-tab lines-tail)))
(global-whitespace-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict/")
(ac-config-default)

(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))
(add-hook 'clojure-mode-hook
 (lambda ()
  (font-lock-add-keywords nil '(("\\<\\(FIXME\\|TODO\\|BUG\\)" 1
   font-lock-warning-face t)))))


; Some custom keybindings
(global-set-key (kbd "<f5>") 'eval-buffer)
(global-set-key (kbd "<f6>") 'nrepl-jack-in)
(global-set-key (kbd "C-3")
  (lambda ()
    (interactive)
    (re-search-forward (format "\\b%s\\b" (thing-at-point 'word)))))
(global-set-key (kbd "<f4>") 'nrepl-eval-last-expression)
(global-set-key (kbd "<f8>") 'magit-status)

(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "<f11>") 'indent-buffer)


(push "*Help*" special-display-buffer-names)
(push "*Backtrace*" special-display-buffer-names)
(push "*compilation.*" special-display-regexps)

(append special-display-buffer-names
  '("*VC-log*"
    "*Help*"
    ("*SLIME.*Compilation.*"
     (height . 25)
     (font . "Consolas 10"))))


(require 'midje-mode)
(require 'clojure-jump-to-file)

(add-hook 'clojure-mode-hook
  (lambda ()
    (paredit-mode 1)))


;; ##############################################
;; ECB
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(require 'ecb)
(setq ecb-tip-of-the-day nil)
(global-set-key (kbd "<f12>") 'ecb-activate)
(set-face-font 'ecb-default-general-face "ProggyTinyTTSZ 12")

(ecb-layout-define "bluegray" left nil
     ;; The frame is already splitted side-by-side and point stays in the
     ;; left window (= the ECB-tree-window-column)
     ;; Here is the creation code for the new layout
     ;; 1. Defining the current window/buffer as ECB-methods buffer
     (ecb-set-directories-buffer)
     ;; 2. Splitting the ECB-tree-windows-column in two windows
     (ecb-split-ver 0.3 t)
     (other-window 1)
     (ecb-set-sources-buffer)
     (ecb-split-ver 0.4 t)
     (other-window 1)
     (ecb-set-methods-buffer)
     (ecb-split-ver 0.4 t)
     (other-window 1)
     (ecb-set-history-buffer)
     ;; 5. Make the ECB-edit-window current (see Postcondition above)
     (select-window (next-window)))

;; ##############################################
;; ## https://github.com/jonase/kibit
;; Teach compile the syntax of the kibit output
(require 'compile)
(add-to-list 'compilation-error-regexp-alist-alist
 '(kibit "At \\([^:]+\\):\\([[:digit:]]+\\):" 1 2 nil 0))
(add-to-list 'compilation-error-regexp-alist 'kibit)

;; A convenient command to run "lein kibit" in the project to which
;; the current emacs buffer belongs to.
(defun kibit ()
  "Run kibit on the current project.
  Display the results in a hyperlinked *compilation* buffer."
  (interactive)
  (compile "lein kibit"))


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


;; ## http://www.emacswiki.org/emacs/FlymakeHtml
(add-hook 'find-file-hook 'flymake-find-file-hook)
(require 'flymake)

(defun flymake-html-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
   'flymake-create-temp-inplace))
  (local-file (file-relative-name
    temp-file
    (file-name-directory buffer-file-name))))
  (list "tidy" (list local-file))))
(add-to-list 'flymake-allowed-file-name-masks
 '("\\.html$\\|\\.ctp" flymake-html-init))
(add-to-list 'flymake-err-line-patterns
 '("line \\([0-9]+\\) column \\([0-9]+\\) - \\(Warning\\|Error\\): \\(.*\\)"
   nil 1 2 4))


;; ## helm https://github.com/emacs-helm/helm
;(require 'helm-config)
;(global-set-key (kbd "C-c h") 'helm-mini)
;(global-set-key (kbd "C-x C-f") 'helm-find-files)

;(helm-mode 1)

;; nrepl
(require 'nrepl)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-interaction-mode-hook 'midje-mode)
(setq nrepl-popup-stacktraces nil)

(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'nrepl-mode))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)

(define-key nrepl-interaction-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc)

(defun new-nrepl1 () (interactive) (nrepl "localhost" 9995))
(defun new-nrepl2 () (interactive) (nrepl "localhost" 9996))
(global-set-key (kbd "<f9>")  'new-nrepl1)
(global-set-key (kbd "<f10>") 'new-nrepl2)

;; https://gist.github.com/3725749
(defun clojure-maybe-compile-and-load-file ()
  "Call function `nrepl-load-current-buffer' if there's an nrepl session.
   Meant to be used in `after-save-hook'."
  (when (and (eq major-mode 'clojure-mode)
             (not (string= "project.clj" buffer-file-name))
             (not (string-match "^.*\.cljs$" buffer-file-name))
             (nrepl-current-session))
    (nrepl-load-current-buffer)))
(add-hook 'after-save-hook 'clojure-maybe-compile-and-load-file)

(defun nrepl-eldoc-space (n)
  "Inserts a space and calls nrepl-eldoc to print arglists"
  (interactive "p")
  (self-insert-command n)
  (when (nrepl-current-session)
    (nrepl-eldoc)))
(define-key clojure-mode-map (kbd "SPC") 'nrepl-eldoc-space)

(defun multi-line-just-one-space (&optional n)
  "Multi-line version of `just-one-space': Delete all spaces and tabs
  around point, leaving one space (or N spaces). When in clojure or
  emacs lisp mode, re-indents the s-expression."
  (interactive "*p")
  (let ((orig-pos (point)))
    (skip-chars-backward " \t\n")
    (constrain-to-field nil orig-pos)
    (dotimes (i (or n 1))
      (if (= (following-char) ?\s)
          (forward-char 1)
        (insert ?\s)))
    (delete-region
     (point)
     (progn
       (skip-chars-forward " \t\n")
       (constrain-to-field nil orig-pos t))))
  (when (or (eq major-mode 'clojure-mode)
            (eq major-mode 'emacs-lisp-mode))
    (indent-sexp)))
(global-set-key (kbd "M-SPC") 'multi-line-just-one-space)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(clojure-swank-command "lein2 jack-in %s")
 '(cua-mode t nil (cua-base))
 '(ecb-layout-name "bluegray")
 '(ecb-layout-window-sizes (quote (("bluegray" (0.13063063063063063 . 0.29508196721311475) (0.13063063063063063 . 0.14754098360655737) (0.13063063063063063 . 0.21311475409836064) (0.13063063063063063 . 0.32786885245901637)))))
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("~/devel/" "dev") ("/home/bluegray/devel/C2" "C2") ("/home/bluegray/devel/Press" "Press") ("/home/bluegray/devel/Server" "Server") ("/home/bluegray/devel/Semaphore2" "Semaphore2") ("/home/bluegray/devel/Cognician-Semaphore" "Cognician-Semaphore") )))
 '(ecb-windows-width 0.2)
 '(hl-paren-background-colors (quote ("#666" "#444" "#444" "#444" "#444" "#444" "#444")))
 '(hl-paren-colors (quote ("#fff")))
 '(scss-sass-command "sass")
 '(scss-sass-options (quote ("--check" "-I" "/home/bluegray/.rvm/gems/ruby-1.9.3-p125/gems/compass-0.12.2/frameworks/compass/stylesheets/")))
 '(sh-basic-offset 2)
 '(sh-indentation 2)
 '(show-paren-mode t)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 88 96 104 112 120))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "gray20" :foreground "ghost white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "ProggySquareTTSZ"))))
 '(css-property ((t (:inherit font-lock-variable-name-face :foreground "#ffff88"))))
 '(font-lock-string-face ((t (:foreground "#ffd0d0"))))
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
 '(show-paren-mismatch ((t (:foreground "yellow" :weight bold)))))
