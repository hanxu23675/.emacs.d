;;; init-ui.el --- settings for Emacs UI
;;; Commentary:
;;; Code:

;; Show the delimiters as rainbow color
(use-package rainbow-delimiters
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(global-display-line-numbers-mode)

(electric-pair-mode)
(show-paren-mode)

(require 'dracula-theme
	 :config
	 (load-theme 'dracula t))


(provide 'init-ui)
;;; init-ui.el ends here
