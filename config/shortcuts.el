;; Common shortcuts for cut/paste/undo
(cua-mode t)


;; Paredit
;; (defvar electrify-return-match
;;   "[\]}\)\"]"
;;   "If this regexp matches the text after the cursor, do an
;;   \"electric\" return.")

;; (defun electrify-return-if-match (arg)
;;   "If the text after the cursor matches `electrify-return-match' then
;;   open and indent an empty line between the cursor and the text.  Move the
;;   cursor to the new line."
;;   (interactive "P")
;;   (let ((case-fold-search nil))
;;     (if (looking-at electrify-return-match)
;;         (save-excursion (newline-and-indent)))
;;     (newline arg)
;;     (indent-according-to-mode)))

;; (add-hook 'clojure-mode-hook
;;           (lambda ()
;;             (paredit-mode t)
;;             (turn-on-eldoc-mode)
;;             (eldoc-add-command
;;              'paredit-backward-delete
;;              'paredit-close-round)
;;             (local-set-key (kbd "RET") 'electrify-return-if-match)
;;             (eldoc-add-command 'electrify-return-if-match)
;;             (show-paren-mode t)))


;; Projectile shortcuts
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-s] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)


;; cider
(defun new-cider1 () (interactive) (cider-connect "localhost" 7888 "~/devel/Server"))
(defun new-cider2 () (interactive) (cider-connect "localhost" 9995 "~/devel/Server"))
(defun new-cider3 () (interactive) (cider-connect "localhost" 5656 "~/devel/Server"))
(defun new-cider4 () (interactive) (cider-connect "localhost" 9991 "~/devel/Server"))

(global-set-key (kbd "<f9>")  'new-cider1)
(global-set-key (kbd "<f10>") 'new-cider2)
(global-set-key (kbd "M-<f10>") 'new-cider3)
(global-set-key (kbd "S-C-M-<f9>") 'new-cider4)
(global-set-key (kbd "M-<f9>") 'cider-quit)
(global-set-key (kbd "C-<f9>") 'cider-jack-in)

(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-x C-d") 'ac-cider-popup-doc))
(eval-after-load "cider"
  '(define-key cider-repl-mode-map (kbd "C-x C-d") 'ac-cider-popup-doc))
(eval-after-load "cider"
  '(define-key cider-repl-mode-map (kbd "C-<f10>") 'cider-visit-error-buffer))


;; indent buffer
(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "C-<f8>") 'indent-buffer)


;; Collapse space
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
(global-set-key (kbd "C-SPC") 'multi-line-just-one-space)


;; highlight and search shortcuts
(global-set-key (kbd "C-3")
  (lambda ()
    (interactive)
    (re-search-forward (format "\\b%s\\b" (thing-at-point 'word)))))

(global-set-key (kbd "C-e") 'ahs-edit-mode)
(global-set-key (kbd "C-<f3>") 'auto-highlight-symbol-mode)

(global-set-key (kbd "<f2>") 'highlight-symbol-at-point)
(global-set-key (kbd "<f3>") 'highlight-symbol-next)
(global-set-key (kbd "M-<f3>") 'highlight-symbol-prev)

(global-set-key (kbd "<f6>") 'highlight-regexp)
(global-set-key (kbd "M-<f6>") 'unhighlight-regexp)

(global-set-key (kbd "<f5>") 'rgrep)


;; buffers
(defun switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))
(global-set-key (kbd "<f7>") 'switch-to-previous-buffer)

(define-key global-map (kbd "<f11>") (lambda () (interactive) (find-file "~/.lein/profiles.clj")))
(define-key global-map (kbd "<f12>") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(define-key global-map (kbd "M-<f12>") (lambda () (interactive) (find-file "~/.emacs.d/config/shortcuts.el")))
(define-key global-map (kbd "C-<f12>") (lambda () (interactive) (find-file "~/.emacs.d/config/addons.el")))



;; Define a custom minor mode to overide some shortcut keys
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "C-M-q") 'align-cljlet)
(define-key my-keys-minor-mode-map (kbd "M-w") 'cljr-cycle-coll)
(define-key my-keys-minor-mode-map (kbd "M-a") 'cljr-cycle-stringlike)
(define-key my-keys-minor-mode-map (kbd "M-e") 'cljr-thread)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(global-set-key (kbd "<f8>") (lambda () (interactive) (slamhound)))
(global-set-key (kbd "<C-M-c>") (lambda () (interactive) (clojure-cheatsheet)))

(global-set-key (kbd "C-<kp-right>") 'paredit-forward)
(global-set-key (kbd "C-<kp-left>") 'paredit-backward)
(global-set-key (kbd "C-<kp-up>") 'paredit-backward)
(global-set-key (kbd "C-<kp-down>") 'paredit-forward-down)
(global-set-key (kbd "C-<kp-prior>") 'beginning-of-buffer)
(global-set-key (kbd "C-<kp-next>") 'end-of-buffer)
