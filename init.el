(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; autoload dracula-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes")
(load-theme 'dracula t)

;; Bootstrap config
;;----------------------------------------------------------------------------
;;(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (require 'init-compat)
(require 'init-utils)
;; cl - Common Lisp Extension
(require 'cl)

;; Machinery for installing required packages.
;; explicitly call 'package-initialize to set up all packages installed via ELPA.
;; should come before all package-related config files
(require 'init-elpa)
(require 'init-exec-path) ;; Set up $PATH

(require 'init-editing-utils)

(require 'mine-config)

(provide 'init)
