<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: cursor-chg.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=cursor-chg.el" /><link type="text/css" rel="stylesheet" href="/emacs/wiki.css" /><meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: cursor-chg.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=cursor-chg.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for cursor-chg.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=cursor-chg.el" /><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><body class="http://www.emacswiki.org/emacs"><div class="header"><a class="logo" href="http://www.emacswiki.org/emacs/SiteMap"><img class="logo" src="/emacs_logo.png" alt="[Home]" /></a><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22cursor-chg.el%22">cursor-chg.el</a></h1></div><div class="wrapper"><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs/download/cursor-chg.el">Download</a></p><pre class="code"><span class="linecomment">;;; cursor-chg.el --- Change cursor dynamically, depending on the context.</span>
<span class="linecomment">;; </span>
<span class="linecomment">;; Filename: cursor-chg.el</span>
<span class="linecomment">;; Description: Change cursor dynamically, depending on the context.</span>
<span class="linecomment">;; Author: Drew Adams</span>
<span class="linecomment">;; Maintainer: Drew Adams</span>
<span class="linecomment">;; Copyright (C) 2006-2012, Drew Adams, all rights reserved.</span>
<span class="linecomment">;; Created: Tue Aug 29 11:23:06 2006</span>
<span class="linecomment">;; Version: 20.1</span>
<span class="linecomment">;; Last-Updated: Sun Jan  1 14:27:44 2012 (-0800)</span>
<span class="linecomment">;;           By: dradams</span>
<span class="linecomment">;;     Update #: 200</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/cgi-bin/wiki/cursor-chg.el</span>
<span class="linecomment">;; Keywords: cursor, accessibility</span>
<span class="linecomment">;; Compatibility: GNU Emacs: 20.x, 21.x, 22.x, 23.x</span>
<span class="linecomment">;; </span>
<span class="linecomment">;; Features that might be required by this library:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   None</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;; </span>
<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  This library provides three kinds of changes to the text cursor:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  1. When a buffer is read-only or is in overwrite mode, the cursor</span>
<span class="linecomment">;;     type changes to `curchg-overwrite/read-only-cursor-type'.  This</span>
<span class="linecomment">;;     is controlled by command `change-cursor-mode' and user option</span>
<span class="linecomment">;;     `curchg-change-cursor-on-overwrite/read-only-flag'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  2. When an input method is in use, the cursor color changes to</span>
<span class="linecomment">;;     `curchg-input-method-cursor-color'.  This is controlled by</span>
<span class="linecomment">;;     command `change-cursor-mode' and user option</span>
<span class="linecomment">;;     `curchg-change-cursor-on-input-method-flag'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  3. When Emacs is idle, the cursor type changes to</span>
<span class="linecomment">;;     `curchg-idle-cursor-type'.  This is controlled by command</span>
<span class="linecomment">;;     `toggle-cursor-type-when-idle'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  To turn on all three types of cursor change by default, put the</span>
<span class="linecomment">;;  following in your Emacs init file (~/.emacs):</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;    (require 'cursor-chg)  ; Load this library</span>
<span class="linecomment">;;    (change-cursor-mode 1) ; On for overwrite/read-only/input mode</span>
<span class="linecomment">;;    (toggle-cursor-type-when-idle 1) ; On when idle</span>
<span class="linecomment">;; </span>
<span class="linecomment">;;  Note: Library `oneonone.el' provides the same functionality as</span>
<span class="linecomment">;;  library `cursor-chg.el', and more.  If you use library</span>
<span class="linecomment">;;  `oneonone.el', then do NOT also use library `cursor-chg.el'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  Note for Emacs 20: There is a bug in Emacs 20 which can lead to a</span>
<span class="linecomment">;;  fatal error (Emacs crash) when using `query-replace' with</span>
<span class="linecomment">;;  idle-cursor change enabled.  If you use Emacs 20, then consider</span>
<span class="linecomment">;;  using `toggle-cursor-type-when-idle' to disable idle-cursor change</span>
<span class="linecomment">;;  while you use `query-replace'.</span>
<span class="linecomment">;; </span>
<span class="linecomment">;;  User options defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;    `curchg-change-cursor-on-input-method-flag',</span>
<span class="linecomment">;;    `curchg-change-cursor-on-overwrite/read-only-flag',</span>
<span class="linecomment">;;    `curchg-default-cursor-color', `curchg-default-cursor-type',</span>
<span class="linecomment">;;    `curchg-idle-cursor-type', `curchg-input-method-cursor-color',</span>
<span class="linecomment">;;    `curchg-overwrite/read-only-cursor-type'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  Commands defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;    `change-cursor-mode', `curchg-change-cursor-when-idle-interval',</span>
<span class="linecomment">;;    `curchg-set-cursor-type', `curchg-toggle-cursor-type-when-idle',</span>
<span class="linecomment">;;    `set-cursor-type', `toggle-cursor-type-when-idle'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  Internal variables defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;    `curchg-change-cursor-when-idle-p', `curchg-idle-interval',</span>
<span class="linecomment">;;    `curchg-idle-timer', `curchg-last-cursor-type'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  Non-interactive functions defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;    `curchg-change-cursor-on-input-method',</span>
<span class="linecomment">;;    `curchg-change-cursor-on-overwrite/read-only',</span>
<span class="linecomment">;;    `curchg-change-cursor-to-idle-type',</span>
<span class="linecomment">;;    `curchg-change-cursor-to-idle-type-off'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  Acknowledgements:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  The cursor-changing on input method and read-only was inspired by</span>
<span class="linecomment">;;  Juri Linkov &lt;juri@jurta.org&gt;.  Joe Casadonte &lt;joc@netaxs.com&gt;</span>
<span class="linecomment">;;  wrote a similar hook (`joc-cursor-type-set-hook'), which he got</span>
<span class="linecomment">;;  from Steve Kemp...</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Change Log:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2011/01/03 dadams</span>
<span class="linecomment">;;     Added autoload cookies for defcustom and commands.</span>
<span class="linecomment">;; 2006/10/28 dadams</span>
<span class="linecomment">;;     curchg-default-cursor-color, curchg-input-method-cursor-color:</span>
<span class="linecomment">;;       Changed :type to 'color for Emacs 21+.</span>
<span class="linecomment">;; 2006/09/04 dadams</span>
<span class="linecomment">;;     curchg-idle-timer: Cancel beforehand, and cancel after defining.</span>
<span class="linecomment">;;     curchg-toggle-cursor-type-when-idle:</span>
<span class="linecomment">;;       Use curchg-change-cursor-to-idle-type-off on pre-command-hook.</span>
<span class="linecomment">;;       Don't read an event; just turn it on.</span>
<span class="linecomment">;;     Added: curchg-change-cursor-to-idle-type-off.</span>
<span class="linecomment">;; 2006/09/03 dadams</span>
<span class="linecomment">;;     Created.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;; </span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or</span>
<span class="linecomment">;; modify it under the terms of the GNU General Public License as</span>
<span class="linecomment">;; published by the Free Software Foundation; either version 2, or</span>
<span class="linecomment">;; (at your option) any later version.</span>
<span class="linecomment">;; </span>
<span class="linecomment">;; This program is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU</span>
<span class="linecomment">;; General Public License for more details.</span>
<span class="linecomment">;; </span>
<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="linecomment">;; Floor, Boston, MA 02110-1301, USA.</span>
<span class="linecomment">;; </span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;; </span>
<span class="linecomment">;;; Code:</span>


<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>


<span class="linecomment">;;------- User Options -------------------------------------</span>

<span class="linecomment">;; Emacs 20 only</span>
(unless (fboundp 'define-minor-mode)
  (defcustom change-cursor-mode nil
    "<span class="quote">*Toggle changing cursor type and color.
Setting this variable directly does not take effect;
use either \\[customize] or command `change-cursor-mode'.</span>"
    :set (lambda (symbol value) (change-cursor-mode (if value 1 -1)))
    :initialize 'custom-initialize-default
    :type 'boolean :group 'cursor :require 'cursor-chg))

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-change-cursor-on-input-method-flag t
  "<span class="quote">*Non-nil means to use a different cursor when using an input method.</span>"
  :type 'boolean :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-change-cursor-on-overwrite/read-only-flag t
  "<span class="quote">*Non-nil means use a different cursor for overwrite mode or read-only.</span>"
  :type 'boolean :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-default-cursor-color (or (cdr (assq 'cursor-color default-frame-alist))
                                           "<span class="quote">Red</span>")
  "<span class="quote">*Default text cursor color for non-special frames.</span>"
  :type (if (&gt;= emacs-major-version 21) 'color 'string) :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-default-cursor-type 'bar "<span class="quote">*Default text cursor type.</span>"
  :type 'symbol :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-idle-cursor-type 'box
  "<span class="quote">*Text cursor type when Emacs is idle.</span>"
  :type 'symbol :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-input-method-cursor-color "<span class="quote">Orange</span>"
  "<span class="quote">*Default cursor color if using an input method.
This has no effect if `curchg-change-cursor-on-input-method-flag' is nil.</span>"
  :type (if (&gt;= emacs-major-version 21) 'color 'string) :group 'cursor)

<span class="linecomment">;;;###autoload</span>
(defcustom curchg-overwrite/read-only-cursor-type 'box
  "<span class="quote">*Default text cursor type for overwrite mode or read-only buffer.
This applies only to non-special frames.  This has no effect if
`curchg-change-cursor-on-overwrite/read-only-flag' is nil.</span>"
  :type 'symbol :group 'cursor)


<span class="linecomment">;;------- Internal Variables -------------------------------</span>

(defvar curchg-last-cursor-type curchg-default-cursor-type "<span class="quote">Saved last cursor type.</span>")

(defvar curchg-idle-interval 2
  "<span class="quote">Number of seconds to wait before changing to alternate cursor type.
The alternate cursor type is `curchg-idle-cursor-type'.
Do NOT change this yourself to change the wait period; instead, use
`\\[curchg-change-cursor-when-idle-interval]'.</span>")

(defvar curchg-idle-timer
  (progn                                <span class="linecomment">; Cancel to prevent duplication.</span>
    (when (boundp 'curchg-idle-timer) (cancel-timer curchg-idle-timer))
    (run-with-idle-timer curchg-idle-interval t 'curchg-change-cursor-to-idle-type))
  "<span class="quote">Timer used to change the cursor to alternate type when Emacs is idle.</span>")

<span class="linecomment">;; Turn it off, by default.  You must use `toggle-cursor-type-when-idle' to turn it on.</span>
(cancel-timer curchg-idle-timer)

(defvar curchg-change-cursor-when-idle-p nil
  "<span class="quote">Non-nil means to use an alternate cursor type whenever Emacs is idle.
Do NOT change this yourself; instead, use `\\[toggle-cursor-type-when-idle]'.</span>")


<span class="linecomment">;;------- Commands -----------------------------------------</span>

(unless (fboundp 'set-cursor-type) (defalias 'set-cursor-type 'curchg-set-cursor-type))
<span class="linecomment">;; This is essentially from Juri Linkov &lt;juri@jurta.org&gt;.</span>
<span class="linecomment">;;;###autoload</span>
(defun curchg-set-cursor-type (cursor-type)
  "<span class="quote">Set the cursor type of the selected frame to CURSOR-TYPE.
When called interactively, prompt for the type to use.
To get the frame's current cursor type, use `frame-parameters'.</span>"
  (interactive
   (list (intern (completing-read "<span class="quote">Cursor type: </span>"
                                  (mapcar 'list '("<span class="quote">box</span>" "<span class="quote">hollow</span>" "<span class="quote">bar</span>" "<span class="quote">hbar</span>" nil))))))
  (modify-frame-parameters (selected-frame) (list (cons 'cursor-type cursor-type))))

<span class="linecomment">;;;###autoload</span>
(defalias 'toggle-cursor-type-when-idle 'curchg-toggle-cursor-type-when-idle)
<span class="linecomment">;;;###autoload</span>
(defun curchg-toggle-cursor-type-when-idle (&optional arg)
"<span class="quote">Turn on or off automatically changing cursor type when Emacs is idle.
When on, use `curchg-idle-cursor-type' whenever Emacs is idle.
With prefix argument, turn on if ARG &gt; 0; else turn off.</span>"
  (interactive "<span class="quote">P</span>")
  (setq curchg-change-cursor-when-idle-p
        (if arg (&gt; (prefix-numeric-value arg) 0) (not curchg-change-cursor-when-idle-p)))
  (cond (curchg-change-cursor-when-idle-p
         (timer-activate-when-idle curchg-idle-timer)
         (add-hook 'pre-command-hook 'curchg-change-cursor-to-idle-type-off)
         (message "<span class="quote">Turned ON changing cursor when Emacs is idle.</span>"))
        (t
         (cancel-timer curchg-idle-timer)
         (remove-hook 'pre-command-hook 'curchg-change-cursor-to-idle-type-off)
         (message "<span class="quote">Turned OFF changing cursor when Emacs is idle.</span>"))))

<span class="linecomment">;;;###autoload</span>
(defun curchg-change-cursor-when-idle-interval (secs)
  "<span class="quote">Set wait until automatically change cursor type when Emacs is idle.
Whenever Emacs is idle for this many seconds, the cursor type will
change to `curchg-idle-cursor-type'.

To turn on or off automatically changing the cursor type when idle,
use `\\[toggle-cursor-type-when-idle].</span>"
  (interactive
   "<span class="quote">nSeconds to idle, before changing cursor type: </span>")
  (timer-set-idle-time curchg-idle-timer
                       (setq curchg-idle-interval secs)
                       t))

(if (fboundp 'define-minor-mode)
    <span class="linecomment">;; Emacs 21 and later.</span>
    (define-minor-mode change-cursor-mode
        "<span class="quote">Toggle changing cursor type and color.
With numeric ARG, turn cursor changing on if and only if ARG is positive.

When this mode is on, `curchg-change-cursor-on-input-method' and
`curchg-change-cursor-on-overwrite/read-only-flag' control cursor
changing.</span>"
      :init-value nil :global t :group 'frames
      :link `(url-link :tag "<span class="quote">Send Bug Report</span>"
              ,(concat "<span class="quote">mailto:</span>" "<span class="quote">drew.adams</span>" "<span class="quote">@</span>" "<span class="quote">oracle</span>" "<span class="quote">.com?subject=\
cursor-chg.el bug: \
&body=Describe bug here, starting with `emacs -q'.  \
Don't forget to mention your Emacs and library versions.</span>"))
      :link '(url-link :tag "<span class="quote">Other Libraries by Drew</span>"
              "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/DrewsElispLibraries</span>")
      :link '(url-link :tag "<span class="quote">Download</span>" "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/cursor-chg.el</span>")
      :link '(url-link :tag "<span class="quote">Description</span>"
              "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/ChangingCursorDynamically</span>")
      :link '(emacs-commentary-link :tag "<span class="quote">Commentary</span>" "<span class="quote">cursor-chg</span>")
      (cond (change-cursor-mode
             (if curchg-change-cursor-on-overwrite/read-only-flag
                 (add-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only)
               (curchg-set-cursor-type curchg-default-cursor-type)
               (remove-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only))
             (if curchg-change-cursor-on-input-method-flag
                 (add-hook 'post-command-hook 'curchg-change-cursor-on-input-method)
               (setq current-input-method nil)
               (curchg-change-cursor-on-input-method)
               (remove-hook 'post-command-hook 'curchg-change-cursor-on-input-method)))
            (t
             (curchg-set-cursor-type curchg-default-cursor-type)
             (setq current-input-method nil)
             (curchg-change-cursor-on-input-method)
             (remove-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only)
             (remove-hook 'post-command-hook 'curchg-change-cursor-on-input-method))))

  <span class="linecomment">;; Emacs 20</span>
  (defun change-cursor-mode (&optional arg)
    "<span class="quote">Toggle changing cursor type and color.
With numeric ARG, turn cursor changing on if and only if ARG is positive.

When this mode is on, `curchg-change-cursor-on-input-method' and
`curchg-change-cursor-on-overwrite/read-only-flag' control cursor
changing.</span>"
    (interactive "<span class="quote">P</span>")
    (setq change-cursor-mode
          (if arg (&gt; (prefix-numeric-value arg) 0) (not change-cursor-mode)))
    (cond (change-cursor-mode
           (if curchg-change-cursor-on-overwrite/read-only-flag
               (add-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only)
             (curchg-set-cursor-type curchg-default-cursor-type)
             (remove-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only))
           (if curchg-change-cursor-on-input-method-flag
               (add-hook 'post-command-hook 'curchg-change-cursor-on-input-method)
             (setq current-input-method nil)
             (curchg-change-cursor-on-input-method)
             (remove-hook 'post-command-hook 'curchg-change-cursor-on-input-method))
           (message "<span class="quote">Change cursor on overwrite/read-only: %s; on input method: %s</span>"
             (if curchg-change-cursor-on-overwrite/read-only-flag "<span class="quote">ON</span>" "<span class="quote">OFF</span>")
             (if curchg-change-cursor-on-input-method-flag "<span class="quote">ON</span>" "<span class="quote">OFF</span>")))
          (t
           (curchg-set-cursor-type curchg-default-cursor-type)
           (setq current-input-method nil)
           (curchg-change-cursor-on-input-method)
           (remove-hook 'post-command-hook 'curchg-change-cursor-on-overwrite/read-only)
           (remove-hook 'post-command-hook 'curchg-change-cursor-on-input-method)
           (message "<span class="quote">Turned OFF changing cursor on overwrite/read-only and input method</span>")))))


<span class="linecomment">;;------- Non-Interactive Functions ------------------------</span>

<span class="linecomment">;; This is inspired by code from Juri Linkov &lt;juri@jurta.org&gt;.</span>
(defun curchg-change-cursor-on-input-method ()
  "<span class="quote">Set cursor type depending on whether an input method is used or not.</span>"
  (set-cursor-color (if current-input-method
                        curchg-input-method-cursor-color
                      curchg-default-cursor-color)))

<span class="linecomment">;; This is from Juri Linkov &lt;juri@jurta.org&gt;, with read-only added.</span>
(defun curchg-change-cursor-on-overwrite/read-only ()
  "<span class="quote">Set cursor type differently for overwrite mode and read-only buffer.
That is, use one cursor type for overwrite mode and read-only buffers,
and another cursor type otherwise.</span>"
  (curchg-set-cursor-type (if (or buffer-read-only overwrite-mode)
                            curchg-overwrite/read-only-cursor-type
                          curchg-default-cursor-type)))

(defun curchg-change-cursor-to-idle-type ()
  "<span class="quote">Change the cursor to `curchg-idle-cursor-type' when Emacs is idle.</span>"
  (let ((type (cdr (assoc 'cursor-type (frame-parameters)))))
    (unless (eq type curchg-idle-cursor-type)
      (setq curchg-last-cursor-type type)
      (curchg-set-cursor-type curchg-idle-cursor-type))))

(defun curchg-change-cursor-to-idle-type-off ()
  "<span class="quote">Turn off changing the cursor to `curchg-idle-cursor-type' when idle.</span>"
  (when curchg-last-cursor-type (curchg-set-cursor-type curchg-last-cursor-type)))

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>

(provide 'cursor-chg)

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;; cursor-chg.el ends here</span></span></pre></div><div class="wrapper close"></div></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=cursor-chg.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="comment local" href="http://www.emacswiki.org/emacs/Comments_on_cursor-chg.el">Talk</a> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=cursor-chg.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=cursor-chg.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=cursor-chg.el">Administration</a></span><!-- test --><span class="time"><br /> Last edited 2012-01-01 23:23 UTC by <a class="author" title="from 148.87.67.210" href="http://www.emacswiki.org/emacs/DrewAdams">DrewAdams</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=cursor-chg.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
