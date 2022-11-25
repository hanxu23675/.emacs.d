;;; init.el -- the entry of emacs config
;;; Commentary:
;;; Code:

;; When Emacs is started, Emacs looks for your init file using the filenames ~/.emacs.el, ~/.emacs, or ~/.emacs.d/init.el in that order.
;; Then Emacs will set user-emacs-directory to the directory it decides to use.
;; Update the load-path with the subdirectory of all configuration files.
(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "config/")))

;; Load configuration files (if it hasn't already been loaded)
(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ide)
(require 'init-keybind)
(require 'init-ui)

;; save customizations somewhere other than your initialization file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;; Add init to the global features list, so that (require 'init) will henceforth know that nothing needs to be done.
(provide 'init)
;;; init.el ends here
