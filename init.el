(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-to-load-path '("../config"))
  (normal-top-level-add-subdirs-to-load-path))

(load "server")
(unless (server-running-p) (server-start))

(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(global-auto-revert-mode t)
(setq inhibit-splash-screen t)
(setq scroll-step 1)
(menu-bar-mode 1)
(setq require-final-newline t)
(fset 'yes-or-no-p 'y-or-n-p)



(setq-default indent-tabs-mode nil)
(setq global-tab-width 2)
(setq css-indent-offset 2)

;; Custom fns and hooks
(defun clojure-maybe-compile-and-load-file ()
  "Call function `nrepl-load-current-buffer' if there's an nrepl session.
   Meant to be used in `after-save-hook'."
  (when (and (eq major-mode 'clojure-mode)
             (not (string= "project.clj" buffer-file-name))
             (not (string-match "^.*\.cljs$" buffer-file-name))
             (nrepl-current-session))
    (nrepl-load-current-buffer)))
(add-hook 'after-save-hook 'clojure-maybe-compile-and-load-file)

;;nrepl fns

(defun my-nrepl-handler (buffer)
  "Make an interactive eval handler for buffer, but emit the value or out to the repl, not the minibuffer."
  (nrepl-make-response-handler buffer
                               (lambda (buffer value)
                                 (progn
                                   (nrepl-emit-result (nrepl-current-repl-buffer) value t)
                                   (nrepl-emit-prompt (nrepl-current-repl-buffer))))
                               (lambda (buffer out)
                                 (nrepl-emit-interactive-output out)
                                 (nrepl-emit-prompt (nrepl-current-repl-buffer)))
                               (lambda (buffer err)
                                 (message "%s" err)
                                 (nrepl-highlight-compilation-errors buffer err))
                               (lambda (buffer)
                                 (nrepl-emit-prompt buffer))))

(defun my-interactive-eval-to-repl (form)
  "Evaluate the given FORM and print value in the repl."
  (remove-overlays (point-min) (point-max) 'nrepl-note-p t)
  (let ((buffer (current-buffer)))
    (nrepl-send-string form (my-nrepl-handler buffer) (nrepl-current-ns))))

(defun my-eval-last-expression-to-repl ()
  (interactive)
  (my-interactive-eval-to-repl (nrepl-last-expression)))

(eval-after-load 'nrepl
  '(progn
     (define-key nrepl-interaction-mode-map (kbd "C-x C-x") 'my-eval-last-expression-to-repl)))

(setq ido-decorations     ; Make ido-mode display vertically
      (quote
       ("\n-> "           ; Opening bracket around prospect list
        ""                ; Closing bracket around prospect list
        "\n   "           ; separator between prospects
        "\n   ..."        ; appears at end of truncated list of prospects
        "["               ; opening bracket around common match string
        "]"               ; closing bracket around common match string
        " [No match]"     ; displayed when there is no match
        " [Matched]"      ; displayed if there is a single match
        " [Not readable]" ; current diretory is not readable
        " [Too big]"      ; directory too big
        " [Confirm]")))   ; confirm creation of new file or buffer

(load "addons")
(load "shortcuts")
(load "looks")

(custom-set-variables
 '(column-number-mode t)
 '(hl-paren-background-colors (quote ("#666" "#444" "#444" "#444" "#444" "#444" "#444")))
 '(hl-paren-colors (quote ("#fff")))
 '(nrepl-host "localhost")
 '(nrepl-port "9991")
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 88 96 104 112 120))))
