;;; init-package.el --- initialize the plugins
;;; Commentary:

;;; Code:
(use-package all-the-icons
  :when (display-graphic-p))

(use-package company
  :init
  ;; To use company-mode in all buffers
  (add-hook 'after-init-hook 'global-company-mode)
  ;; Company do not work along with gud (debugging) mode for some reason
  (add-hook 'gud-mode-hook (lambda() (company-mode 0)))
  :config
  (setq company-minimum-prefix-length 3
        company-show-quick-access t))

(use-package flycheck
  :init (global-flycheck-mode)
  :config (flycheck-popup-tip-mode))

;; Show the delimiters as rainbow color
(use-package rainbow-delimiters
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))



;(use-package magit)
;(use-package forge)


(provide 'init-package)
;;; init-package.el ends here
