(setq-default
 make-backup-files nil
 column-number-mode t
 show-trailing-whitespace t)

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

;; visual line
(global-visual-line-mode t)

;; autoload dracula-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(load-theme 'dracula t)

(provide 'mine-config)
