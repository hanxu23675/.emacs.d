;;; init-ide.el --- initialize the integrated development environment
;;; Commentary:

;;; C/C++
;;; Code:
(use-package company-c-headers
  :config (add-to-list 'company-backends 'company-c-headers))
(use-package company-rtags)
;;clang-format to format file reasonably.
;(use-package clang-format
;  :init
;;clang-format to format file reasonably.  Do NOT turn off!
;(require 'clang-format)
;(global-set-key [C-M-tab] 'clang-format-region)
;(add-hook 'c-mode-common-hook
;          (function (lambda ()
;		      (add-hook 'write-contents-functions
;				(lambda() (progn (clang-format-buffer) nil))))))
;(add-hook 'cpp-mode-common-hook
;          (function (lambda ()
;		      (add-hook 'write-contents-functions
;                                (lambda() (progn (clang-format-buffer) nil))))))

;;Gdb window layout stuff
(setq gdb-many-windows t
      gdb-use-separate-io-buffer t)
(advice-add 'gdb-setup-windows :after (lambda() (set-window-dedicated-p (selected-window) t)))
(defconst gud-windown-register 123456)
(defun gud-quit()
  (interactive)
  (gud-basic-call "quit"))

(add-hook 'gud-mode-hook
          (lambda()
            (gud-tooltip-mode)
            (window-configuration-to-register gud-windown-register)
            (local-set-key (kbd "C-q") 'gud-quit)))

(advice-add 'gud-sentinel :after
            (lambda (proc msg)
              (when (memq (process-status proc) '(signal exit))
                (jump-to-register gud-windown-register)
                (bury-buffer))))




(provide 'init-ide)
;;; init-ide.el ends here

