;;; init.el -- the entry of emacs config
;;; Commentary:
;;; Code:

;; set the startup default directory, not essential but recommended.
(setq default-directory "~/")
;; When Emacs is started, Emacs looks for your init file using the filenames ~/.emacs.el, ~/.emacs, or ~/.emacs.d/init.el in that order.
;; Then Emacs will set user-emacs-directory to the directory it decides to use.
;; update load-path to make customized lisp codes work
(dolist (folder (directory-files (concat user-emacs-directory "config") t directory-files-no-dot-files-regexp))
  (add-to-list 'load-path folder))

;; Load configuration files (if it hasn't already been loaded)
(require 'init-startup)
(require 'init-keybind)
(require 'init-ui)
(require 'init-cpp)
(require 'init-py)

;; save customizations somewhere other than your initialization file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))


;; Add init to the global features list, so that (require 'init) will henceforth know that nothing needs to be done.
(provide 'init)
;;; init.el ends here
