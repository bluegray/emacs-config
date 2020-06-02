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
(add-hook 'clojure-mode-hook 'hs-minor-mode)
(add-hook 'clojure-mode-hook
          (lambda ()
            (font-lock-add-keywords nil '(("\\<\\(FIXME\\|TODO\\|BUG\\|spy\\)" 1
                                           font-lock-warning-face t)))
            (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

;; Custom clojure indentation
(define-clojure-indent
  ;; compojure
  (context 'defun)
  (GET 'defun)
  (POST 'defun)
  ;; component
  (start 'defun)
  (stop 'defun)
  (init 'defun)
  (db 'defun)
  (conn 'defun)
  ;; datalog
  (and-join 'defun)
  (or-join 'defun)
  (not-join 'defun)
  ;; tufte
  (tufte/p 'defun)
  ;;re-frame
  (rf/reg-event-db 'defun)
  (rf/reg-event-fx 'defun)
  (rf/reg-sub 'defun)
  (rf/reg-fx 'defun))


(defun clojure-maybe-compile-and-load-file ()
  "Call function 'cider-load-buffer' for clojure files.
   Meant to be used in `after-save-hook'."
  (when (and (or (eq major-mode 'clojurec-mode) (eq major-mode 'clojure-mode))
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
(setq ido-use-faces t)
(setq ido-enable-flex-matching t)


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
(add-hook 'cider-repl-mode-hook #'eldoc-mode)
(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-known-endpoints
      '(("local"      "127.0.0.1" "9991")
        ("staging"    "127.0.0.1" "9995")
        ("production" "127.0.0.1" "9995")))

(setq cider-repl-use-clojure-font-lock nil)
(setq cider-print-fn 'fipp)
(setq cider-print-options '(("length"       30) ("right-margin" 50)
                            ("print-length" 30) ("width"        50)))

(defun cider-figwheel-repl ()
  (interactive)
  (save-some-buffers)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/start-figwheel!) ; idempotent
             (figwheel-sidecar.repl-api/cljs-repl)")
    (cider-repl-return)))
(global-set-key (kbd "C-c C-f") #'cider-figwheel-repl)

(defun user/cider-send-to-repl ()
  (interactive)
  (let ((s (buffer-substring-no-properties
            (nth 0 (cider-last-sexp 'bounds))
            (nth 1 (cider-last-sexp 'bounds)))))
    (with-current-buffer (cider-current-connection)
      (insert s)
      (cider-repl-return))))
(global-set-key (kbd "C-c C-j") #'user/cider-send-to-repl)

;; company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


;; ac-cider
;;(require 'ac-cider)
;;(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;;(add-hook 'cider-mode-hook 'ac-cider-setup)
;;(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;;(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'cider-mode))
;;(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'cider-repl-mode))


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
(setq yas-prompt-functions '(yas-x-prompt))


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


;; SCSS Mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(add-hook 'scss-mode-hook
          (lambda ()
            (paredit-mode 1)))

(defun my-electric-brace (arg)
  "Automatically add a closing '}' for every '{' inserted."
  (interactive "*P")
  (let ((count (prefix-numeric-value arg)))
    (self-insert-command count)
    (save-excursion
      (insert-char ?} count))))

(defun my-scss-mode-hook ()
  (local-set-key (kbd "{") 'my-electric-brace))

(add-hook 'scss-mode-hook 'my-scss-mode-hook)


;; More addons
(require 'align-cljlet)
;;(require 'magit)
;;(require 'slamhound)


;;floobits
(require 'floobits)


;; flycheck

(require 'flycheck)
(require 'flycheck-joker)
(require 'flycheck-clj-kondo)
(add-hook 'after-init-hook #'global-flycheck-mode)

(dolist (checker '(clj-kondo-clj clj-kondo-cljs clj-kondo-cljc clj-kondo-edn))
  (setq flycheck-checkers (cons checker (delq checker flycheck-checkers))))

(dolist (checkers '((clj-kondo-clj . clojure-joker)
                    (clj-kondo-cljs . clojurescript-joker)
                    (clj-kondo-cljc . clojure-joker)
                    (clj-kondo-edn . edn-joker)))
  (flycheck-add-next-checker (car checkers) (cons 'error (cdr checkers))))

;;devdocs-lookup
(require 'devdocs-lookup)
(require 'key-chord)
(devdocs-setup)
(global-set-key (kbd "C-h C-c") #'devdocs-lookup-clojure)
(key-chord-mode 1)
(key-chord-define-global "??" 'devdocs-lookup-clojure)
