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

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-desert)))

(global-auto-revert-mode t)
(setq inhibit-splash-screen t)
(setq scroll-step 1)
(menu-bar-mode 1)
(set-default-font "Consolas 10")
(require 'linum)
(global-linum-mode 1)
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode 1)
(global-hl-line-mode 1)
(require 'git-emacs)
(require 'yasnippet)
(yas/global-mode 1)
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)
(require 'paredit)
(require 'clojure-mode)

(show-paren-mode 1)
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
  (lambda nil (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(load-file "~/.emacs.d/plugins/highlight-indentation.el")
(highlight-indentation-mode 1)
(highlight-indentation-current-column-mode 1)

;; make whitespace-mode use just basic coloring
(setq-default whitespace-line-column 80)
(setq whitespace-style (quote (face spaces tabs trailing empty tab-mark space-before-tab space-after-tab)))
(global-whitespace-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict/")
(ac-config-default)

; Get some default keybindings for copy/paste/undo
(cua-mode t)
; Fix copy/paste buffers
(setq x-select-enable-clipboard t)
(setq select-active-regions t) ;  active region sets primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.
(global-set-key (kbd "C-v") 'clipboard-yank)
(global-set-key (kbd "C-c") 'clipboard-kill-ring-save)

; Some custom keybindings
(global-set-key (kbd "<f5>") 'eval-buffer)
(global-set-key (kbd "<f6>") 'clojure-jack-in)
(global-set-key (kbd "C-3")
  (lambda ()
    (interactive)
    (re-search-forward (format "\\b%s\\b" (thing-at-point 'word)))))
(global-set-key (kbd "<f4>") 'eval-last-sexp)
(global-set-key (kbd "<f7>") 'slime-interrupt)
(global-set-key (kbd "C-\\") 'ac-complete-filename)

(defun indent-buffer ()
      (interactive)
      (save-excursion
        (indent-region (point-min) (point-max) nil)))
    (global-set-key (kbd "<f11>") 'indent-buffer)

(defun my-isearch-word-at-point ()
  (interactive)
  (call-interactively 'isearch-forward-regexp))

(defun my-isearch-yank-word-hook ()
  (when (equal this-command 'my-isearch-word-at-point)
    (let ((string (concat "\\<"
                          (buffer-substring-no-properties
                           (progn (skip-syntax-backward "w_") (point))
                           (progn (skip-syntax-forward "w_") (point)))
                          "\\>")))
      (if (and isearch-case-fold-search
               (eq 'not-yanks search-upper-case))
          (setq string (downcase string)))
      (setq isearch-string string
            isearch-message
            (concat isearch-message
                    (mapconcat 'isearch-text-char-description
                               string ""))
            isearch-yank-flag t)
      (isearch-search-and-update))))

(add-hook 'isearch-mode-hook 'my-isearch-yank-word-hook)
(global-set-key (kbd "<f3>") 'my-isearch-word-at-point)


(push "*Help*" special-display-buffer-names)
(push "*Backtrace*" special-display-buffer-names)
(push ".*sldb.*" special-display-regexps)
(push "*SLIME.*Compilation.*" special-display-regexps)
(push "*compilation.*" special-display-regexps)

(add-hook 'slime-mode-hook
          (lambda ()
            (require 'midje-mode)
            (midje-mode 1)))

(add-hook 'clojure-mode-hook
          (lambda ()
            (paredit-mode 1)))

(add-hook 'slime-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

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
     (ecb-split-ver 0.2 t)
     (other-window 1)
     (ecb-set-methods-buffer)
     (ecb-split-ver 0.4 t)
     (other-window 1)
     (ecb-set-history-buffer)
     ;; 5. Make the ECB-edit-window current (see Postcondition above)
     (select-window (next-window)))

(defun clojure-slime-maybe-compile-and-load-file ()
  "Call function `slime-compile-and-load-file' if current buffer is connected to a swank server.
   Meant to be used in `after-save-hook'."
  (when (and (eq major-mode 'clojure-mode) (slime-connected-p))
    (slime-compile-and-load-file)))
(add-hook 'after-save-hook 'clojure-slime-maybe-compile-and-load-file)

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

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

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))

(setq-default indent-tabs-mode nil)
(setq global-tab-width 2) ; or any other preferred value
(setq css-indent-offset 2)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-layout-name "bluegray")
 '(ecb-layout-window-sizes (quote (("bluegray" (0.21171171171171171 . 0.3) (0.21171171171171171 . 0.14) (0.21171171171171171 . 0.22) (0.21171171171171171 . 0.32)))))
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("~/devel/" "dev") ("/home/bluegray/devel/Cognician-API-Server" "API"))))
 '(ecb-windows-width 0.2)
 '(hl-paren-background-colors (quote ("#666" "#444" "#444" "#444" "#444" "#444" "#444")))
 '(hl-paren-colors (quote ("#fff")))
 '(scss-sass-command "sass")
 '(scss-sass-options (quote ("--check" "-I" "/home/bluegray/.rvm/gems/ruby-1.9.3-p125/gems/compass-0.12.2/frameworks/compass/stylesheets/")))
 '(sh-basic-offset 2)
 '(sh-indentation 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 88 96 104 112 120))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(css-property ((t (:inherit font-lock-variable-name-face :foreground "#ffff88"))))
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
