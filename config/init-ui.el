;;; init-ui.el --- settings for Emacs UI
;;; Commentary:
;;; Code:

(global-display-line-numbers-mode)

(electric-pair-mode)
(show-paren-mode)

(require 'dracula-theme
	 :config
	 (load-theme 'dracula t))


(provide 'init-ui)
;;; init-ui.el ends here
