;;; bluegray-theme.el --- A port of a well-known VIM theme.

;; Copyright (C) Sergei Lebedev
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA
;;
;; Author: Sergei Lebedev <superbobry@gmail.com>
;; Keywords:
;; Requirements:
;; Status: not intended to be distributed yet


(deftheme bluegray
  "A port of a well-known VIM theme.")

;; Please, install rainbow-mode
;; Colors with +x are lighter. Colors with -x are darker.
(let ((bluegray-fg            "ghost white")
      (bluegray-bg-1          "gray15")
      (bluegray-bg            "gray20")
      (bluegray-bg+1          "gray40")
      (bluegray-bg+2          "gray60")
      (bluegray-hl            "#333333")
      (bluegray-yellow-1      "yellow2")
      (bluegray-yellow        "yellow")
      (bluegray-khaki         "khaki")
      (bluegray-olive         "OliveDrab")
      (bluegray-green         "PaleGreen3")
      (bluegray-blue          "LightSkyBlue3")
      (bluegray-pink          "#ffa0a0")
      (bluegray-red           "IndianRed3")
      (bluegray-warning-fg    "goldenrod"))
  (custom-theme-set-variables
   'bluegray
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'bluegray
   `(default ((t (:foreground ,bluegray-fg :background ,bluegray-bg))))
   `(cursor ((t (:background ,bluegray-khaki))))
   `(fringe ((t (:background ,bluegray-bg))))
   `(font-lock-builtin-face ((t (:foreground ,bluegray-red))))
   `(font-lock-comment-face ((t (:foreground ,bluegray-blue))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,bluegray-blue))))
   `(font-lock-doc-face ((t (:foreground ,bluegray-red))))
   `(font-lock-keyword-face ((t (:foreground ,bluegray-khaki :bold t))))
   `(font-lock-string-face ((t (:foreground ,bluegray-pink))))
   `(font-lock-type-face ((t (:foreground ,bluegray-green :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,bluegray-fg))))
   `(font-lock-warning-face ((t (:foreground ,bluegray-warning-fg :bold t :inherit nil))))
   `(font-lock-function-name-face ((t (:foreground ,bluegray-green :bold t))))
   `(font-lock-constant-face ((t (:foreground ,bluegray-pink))))

   `(minibuffer-prompt ((t (:foreground ,bluegray-khaki :bold t))))
   `(Buffer-menu-buffer ((t (:foreground ,bluegray-khaki))))
   `(header-line ((t (:background ,bluegray-bg-1 :box (:color ,bluegray-bg :line-width 2)))))
   `(mode-line ((t (:inherit header-line :foreground ,bluegray-bg+2 :background ,bluegray-bg-1))))
   `(mode-line-inactive ((t (:inherit mode-line))))
   `(mode-line-buffer-id ((t (:foreground ,bluegray-hl :bold t))))

   `(linum ((t (:foreground ,bluegray-yellow :background ,bluegray-bg))))
   `(highlight ((t (:foreground ,bluegray-khaki :background ,bluegray-olive))))
   `(region ((t (:foreground ,bluegray-khaki :background ,bluegray-olive))))
   `(show-paren-mismatch ((t (:foreground ,bluegray-red :background ,bluegray-bg :bold t))))
   `(show-paren-match ((t (:foreground ,bluegray-fg :background "darkcyan" :bold t))))
   `(trailing-whitespace ((t (:background nil :inherit font-lock-warning-face))))
   `(match ((t (:weight bold))))

   ;; dired
   `(dired-directory ((t (:foreground ,bluegray-khaki))))

   ;; link
   `(link ((t (:background ,bluegray-bg :foreground ,bluegray-red :bold t :underline nil))))
   `(link-visited ((t (:inherit link :bold nil))))

   ;; isearch
   `(isearch ((t (:foreground ,bluegray-khaki :background ,bluegray-olive))))
   `(isearch-lazy-light ((t (:background ,bluegray-bg :foreground ,bluegray-fg :bold t))))

   ;; compilation
   `(compilation-info ((t (:foreground ,bluegray-green :bold t :inherit nil))))
   `(compilation-warning ((t (:foreground ,bluegray-khaki :bold t :inherit nil))))

   ;; jabber.el
   `(jabber-roster-user-chatty ((t (:inherit font-lock-type-face :bold t))))
   `(jabber-roster-user-online ((t (:inherit font-lock-keyword-face :bold t))))
   `(jabber-roster-user-offline ((t (:foreground ,bluegray-bg+1 :background ,bluegray-bg))))
   `(jabber-roster-user-away ((t (:inherit font-lock-doc-face))))
   `(jabber-roster-user-xa ((t (:inherit font-lock-doc-face))))
   `(jabber-roster-user-dnd ((t (:inherit font-lock-comment-face))))
   `(jabber-roster-user-error ((t (:inherit font-lock-warning-face))))

   `(jabber-title-small ((t (:height 1.2 :weight bold))))
   `(jabber-title-medium ((t (:inherit jabber-title-small :height 1.2))))
   `(jabber-title-large ((t (:inherit jabber-title-medium :height 1.2))))

   `(jabber-chat-prompt-local ((t (:inherit font-lock-string-face :bold t))))
   `(jabber-chat-prompt-foreign ((t (:inherit font-lock-function-name-face :bold nil))))
   `(jabber-chat-prompt-system ((t (:inherit font-lock-comment-face :bold t))))
   `(jabber-rare-time-face ((t (:inherit font-lock-function-name-face :bold nil))))

   `(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
   `(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local :bold t))))

   ;; ido
   `(ido-first-match ((t (:foreground ,bluegray-green :bold t))))
   `(ido-only-match ((t (:foreground ,bluegray-green :bold t))))
   `(ido-subdir ((t (:foreground ,bluegray-khaki :bold t))))

   ;; auto-complete
   `(ac-candidate-face ((t (:background ,bluegray-bg-1 :foreground ,bluegray-fg))))
   `(ac-selection-face ((t (:inherit highlight))))
   `(ac-completion-face ((t (:inherit ac-selection-face))))

   ;; elscreen
   `(elscreen-tab-background-face ((t (:background ,bluegray-bg-1))))
   `(elscreen-tab-other-screen-face
     ((t (:background ,bluegray-bg-1 :foreground ,bluegray-bg+2))))
   `(elscreen-tab-current-screen-face
     ((t (:background ,bluegray-bg-1 :foreground ,bluegray-warning-fg :bold t))))
   `(elscreen-tab-control-face
     ((t (:inherit elscreen-tab-current-screen-face :underline nil))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'bluegray)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; bluegray-theme.el ends here
