;;----------------------------------------------------------------------------
;; Add spell-checking in comments for all programming language modes
;;----------------------------------------------------------------------------
(if (fboundp 'prog-mode)
    (add-hook 'prog-mode-hook 'flyspell-prog-mode)
  (dolist (hook '(lisp-mode-hook
                  emacs-lisp-mode-hook
                  scheme-mode-hook
                  python-mode-hook
                  shell-mode-hook
                  haskell-mode-hook))
    (add-hook hook 'flyspell-prog-mode)))

(provide 'init-flyspell)
