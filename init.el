;;; init.el --- Initialization file for Emacs
;; Add plugins and config folders to load path
;;; Code:

(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-to-load-path '("../config"))
  (normal-top-level-add-subdirs-to-load-path))


;;Run an emacs server
(load "server")
(unless (server-running-p) (server-start))


;; emacs options
(global-auto-revert-mode t)
(setq inhibit-splash-screen t)
(setq scroll-step 1)
(menu-bar-mode 1)
(setq require-final-newline t)
(fset 'yes-or-no-p 'y-or-n-p)



;;; Commentary:
;;

(require 'package)
(package-initialize)
(add-to-list 'package-archives
           '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(unless (package-installed-p 'cider)
;;  (package-install 'cider))


;; Editor options
(setq-default indent-tabs-mode nil)
(setq global-tab-width 2)
(setq css-indent-offset 2)
(setq-default fill-column 80)


;; Save Hooks
(add-hook 'before-save-hook 'whitespace-cleanup)


;; ediff
(setq ediff-split-window-function (if (> (frame-width) 150)
                                      'split-window-horizontally
                                      'split-window-vertically))


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


;; Just exit already
;;(defadvice save-buffers-kill-emacs (around no-y-or-n activate)
;;  (flet ((yes-or-no-p (&rest args) t)
;;         (y-or-n-p (&rest args) t))
;;    ad-do-it))

(require 'subr-x)
;; Load custom config files
(load "addons")
(load "shortcuts")
(load "looks")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(hl-paren-background-colors (quote ("#666" "#444" "#444" "#444" "#444" "#444" "#444")))
 '(hl-paren-colors (quote ("#fff")))
 '(nrepl-host "localhost")
 '(nrepl-port "9991")
 '(package-selected-packages (quote (cider)))
 '(safe-local-variable-values
   (quote
    ((cider-ns-refresh-after-fn . "cognician.server-daemon/start-web")
     (cider-ns-refresh-before-fn . "cognician.server-daemon/stop-web"))))
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 88 96 104 112 120))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-property ((t (:inherit font-lock-variable-name-face :foreground "#ffff88"))))
 '(font-lock-string-face ((t (:foreground "#ffd0d0"))))
 '(font-lock-warning-face ((t (:background "gold" :foreground "black" :weight bold))))
 '(hl-line ((t (:background "#2a2a2a"))))
 '(hl-paren-face ((t (:weight bold))) t)
 '(mode-line ((t (:foreground "#030303" :background "OliveDrab3" :box nil))))
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
 '(show-paren-mismatch ((t (:foreground "yellow" :weight bold))))
 '(whitespace-line ((t (:foreground "#ffffbb")))))

(provide 'init)

;;; init.el ends here
