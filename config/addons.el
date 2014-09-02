;; line numbers
(require 'linum)
(global-linum-mode 1)
(column-number-mode 1)

;; git emacs
(require 'git-emacs)

;; paredit and parens
(require 'paredit)
(add-hook 'clojure-mode-hook
  (lambda ()
    (paredit-mode 1)))
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(show-paren-mode 1)
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
  (lambda nil (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;; clojure mode
(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljx\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.edn\\'" . clojure-mode))
(add-hook 'clojure-mode-hook
 (lambda ()
  (font-lock-add-keywords nil '(("\\<\\(FIXME\\|TODO\\|BUG\\|spy\\)" 1
                                 font-lock-warning-face t)))
  (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

;; Custom clojure indentation
(define-clojure-indent
  ;; om & om-tools indenting
  (display-name 'defun)
  (init-state 'defun)
  (will-mount 'defun)
  (did-mount 'defun)
  (will-unmount 'defun)
  (render 'defun)
  (render-state 'defun)
  (should-update 'defun)
  (will-update 'defun)
  (will-receive-props 'defun)
  (did-update 'defun)
  ;; prismatic plumbing
  (for-map 'defun)
  (letk 'defun)
  ;; compojure
  (context 'defun)
  ;;
  (let-programs 'defun))


(defun clojure-maybe-compile-and-load-file ()
  "Call function `nrepl-load-current-buffer' if there's an nrepl session.
   Meant to be used in `after-save-hook'."
  (when (and (eq major-mode 'clojure-mode)
             (not (string-match ".*\\(project\\|profiles\\)\.clj$" buffer-file-name))
             (not (string-match "^.*\.cljs$" buffer-file-name))
             (nrepl-current-session))
    (cider-load-current-buffer)))
(add-hook 'after-save-hook 'clojure-maybe-compile-and-load-file)


;; midge mode
(require 'midje-mode)


;; powerline
(require 'powerline)


;; projectile
(require 'projectile)
(projectile-global-mode)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)


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


;; cider
(require 'cider)
(setq cider-repl-history-file "~/tmp/cider_history")
(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces nil)
(setq cider-repl-print-length 100)
(setq cider-repl-result-prefix ";; => ")
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)


;; company
;;(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)


;; ac-cider
(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'cider-mode))
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'cider-repl-mode))


;; auto complete
(require 'auto-complete-config)
(ac-config-default)


;; trigger autocomplete on TAB
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-repl-mode-hook 'set-auto-complete-as-completion-at-point-function)


;; auto highlight and highlight
(require 'auto-highlight-symbol)
(require 'highlight-symbol)


;; git gutter
(require 'git-gutter-fringe)
(global-git-gutter-mode t)


;; clj-refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook
  (lambda ()
    (clj-refactor-mode 1)
    (cljr-add-keybindings-with-prefix "C-c C-m")))


;; More addons
(require 'align-cljlet)
(require 'magit)
(require 'slamhound)
(require 'helm)
(require 'clojure-cheatsheet)
