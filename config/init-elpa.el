;;; init-elpa.el --- initialize the elpa repository
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


;; Add to the global features list, so that (require 'init-elpa) will henceforth know that nothing needs to be done.
(provide 'init-elpa)
;;; init-elpa.el ends here
