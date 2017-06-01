;;; ######## Change Default Values ######## >>>
;; do not generate backup file when edit a exist file
(setq-default make-backup-files nil)

;; Turn on column number display at the bottom
(setq-default column-number-mode t)

;; show visual whitespace at the end of a line
(setq-default show-trailing-whitespace t)

;; modify the cursor to a vertical line
(setq-default cursor-type 'bar)
;;; ######## Change Default Values ######## <<<


;;; ######## Edit Setting Values ######## >>>
(setq c-default-style "Linux")
(setq-default c-basic-offset 4)              ; indents 4 chars
(setq default-tab-width   4)                 ; 4 char width for TAB char
(setq tab-width           4)                 ; 4 char width for TAB char
(setq-default indent-tabs-mode nil)        ; force use of spaces instead of TAB char
;;; ######## Edit Setting Values ######## <<<



;;; ######## Change Other Setting Values ######## >>>
;; turn off auto save
(setq auto-save-mode nil)
;; do not generate #filename# temp file
(setq auto-save-default nil)

;; inhibit welcom screen at startup
(setq inhibit-startup-screen t)

;; set default woking directory(C-x C-f/C-x C-v)
(setq default-directory "~/work/bev_tcu/code/base/18BEV_TCU")
;;; ######## Change Other Setting Values ######## <<<


;; newline behavior
(global-set-key (kbd "RET") 'newline-and-indent)
(defun sanityinc/newline-at-end-of-line ()
  "Move to end of line, enter a newline, and reindent."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

;; display time
(display-time-mode t)
(setq display-time-24hr-format t)


;; display line number
(require 'linum)
(global-linum-mode t)

;; highlight current line
(global-hl-line-mode t)

;; visual line
(global-visual-line-mode t)

;; autoload dracula-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(load-theme 'dracula t)


;; ######## ELPA Configuration ######## >>>
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("popkit" . "http://elpa.popkit.org/packages/"))
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
)

;; ######## ELPA Configuration ######## <<<


;; ######## My Own Elisp Functions ######## >>>

;; define function to shutdown emacs server instance
(defun server-shutdown ()
  "Save buffers, Quit, and Shutdown (kill) server"
  (interactive)
  (save-some-buffers)
  (kill-emacs)
  )

;; define function to shutdown emacs server instance
(defun server-restart ()
  "Save buffers, Quit, and Restart (kill->start) server"
  (interactive)
  (save-buffers-kill-emacs)
  (server-start)
  )

;; ######## My Own Elisp Functions ######## <<<

(provide 'mine-config)
