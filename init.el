;; Add plugins and config folders to load path
(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-to-load-path '("../config"))
  (normal-top-level-add-subdirs-to-load-path))


;;Run an emacs server
(load "server")
(unless (server-running-p) (server-start))


;; Package Manager
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


;; emacs options
(global-auto-revert-mode t)
(setq inhibit-splash-screen t)
(setq scroll-step 1)
(menu-bar-mode 1)
(setq require-final-newline t)
(fset 'yes-or-no-p 'y-or-n-p)


;; Editor options
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
    (cider-load-current-buffer)))
(add-hook 'after-save-hook 'clojure-maybe-compile-and-load-file)


;; IDO options
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

;; sort ido filelist by mtime instead of alphabetically
(add-hook 'ido-make-file-list-hook 'ido-sort-mtime)
(add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)
(defun ido-sort-mtime ()
  (setq ido-temp-list
        (sort ido-temp-list
              (lambda (a b)
                (time-less-p
                 (sixth (file-attributes (concat ido-current-directory b)))
                 (sixth (file-attributes (concat ido-current-directory a)))))))
  (ido-to-end  ;; move . files to end (again)
   (delq nil (mapcar
              (lambda (x) (and (char-equal (string-to-char x) ?.) x))
              ido-temp-list))))


;; Load custom config files
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
