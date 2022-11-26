;;; init-startup.el --- settings for Emacs startup.
;;; Commentary:
;;; Code:

;; Original value of package-archives:
;; (("gnu" . "https://elpa.gnu.org/packages/")("nongnu" . "https://elpa.nongnu.org/nongnu/"))
;; Add MELPA repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; configure use-package prior to loading it
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (require 'use-package))

(use-package diminish)
(use-package delight)

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


(provide 'init-startup)
;;; init-startup.el ends here
