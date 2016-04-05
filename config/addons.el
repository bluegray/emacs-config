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
(add-hook 'cider-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

(show-paren-mode 1)
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
  (lambda nil (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)


;; clojure mode
(require 'clojure-mode)
;;(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))
;;(add-to-list 'auto-mode-alist '("\\.cljx\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.hiccup\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.edn\\'" . clojure-mode))
(setq clojure-align-forms-automatically t)
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
  "Call function 'cider-load-buffer' for clojure files.
   Meant to be used in `after-save-hook'."
  (when (and (eq major-mode 'clojure-mode)
             (not (string-match ".*\\(project\\|profiles\\)\.clj$" buffer-file-name))
             (not (string-match "^.*\.cljs$" buffer-file-name)))
    (cider-load-buffer)))
(add-hook 'after-save-hook 'clojure-maybe-compile-and-load-file)


;; midge mode
(require 'midje-mode)


;; projectile
(require 'projectile)
(projectile-global-mode)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)


;; cider
(require 'cider)
(setq cider-repl-history-file "~/tmp/cider_history")
(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-popup-stacktraces nil)
(setq cider-repl-popup-stacktraces nil)
(setq cider-repl-print-length 100)
(setq cider-repl-result-prefix ";; => ")
(setq cider-prompt-for-symbol nil)
(setq cider-prompt-for-project-on-connect nil)
(setq nrepl-buffer-name-show-port t)
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


;; yassnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)


;; clj-refactor
(require 'clj-refactor)
(defun clj-refactor-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import statements
  ;; This choice of keybinding leaves cider-macroexpand-1 unbound
  (cljr-add-keybindings-with-prefix "C-c C-m"))
(add-hook 'clojure-mode-hook #'clj-refactor-clojure-mode-hook)
;;(setq cljr-suppress-middleware-warnings t)
(setq cljr-favor-prefix-notation nil)


;; More addons
(require 'align-cljlet)
;;(require 'magit)
;;(require 'slamhound)
