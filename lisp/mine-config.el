;;; ######## Edit Setting Values ######## >>>
;; modify the cursor to a vertical line
(setq-default cursor-type 'bar)

;; indents 4 chars
(setq-default c-basic-offset 4)

;; Indent style setting
(setq c-default-style "Linux")

;; 4 char width for TAB char
(setq default-tab-width   4)

;; 4 char width for TAB char
(setq tab-width           4)

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

;;; ######## Packages initialize ######## >>>
(require-package 'window-numbering)
(require 'window-numbering)
(window-numbering-mode 1)
;;; ######## Packages initialize ######## <<<


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
