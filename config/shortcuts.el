;; Common shortcuts for cut/paste/undo
(cua-mode t)


;; Projectile shortcuts
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-s] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)


;; cider
(defun new-cider1 () (interactive) (cider "localhost" 9991))
(defun new-cider2 () (interactive) (cider "localhost" 9995))
(global-set-key (kbd "<f9>")  'new-cider1)
(global-set-key (kbd "<f10>") 'new-cider2)
(global-set-key (kbd "M-<f9>") 'cider-quit)

(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))
(eval-after-load "cider"
  '(define-key cider-repl-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))


;; indent buffer
(defun indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "<f11>") 'indent-buffer)


(add-hook 'lisp-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))

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
