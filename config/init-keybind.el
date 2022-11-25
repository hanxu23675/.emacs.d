;;; init-kbd.el --- configs for key bind
;;; Commentary:
;;; Code:

;; Make C-x C-g be bound to ''goto line:''
(global-set-key "\C-x\C-g" 'goto-line)

(use-package ace-window
  :bind (("M-o" . 'ace-window)))


(provide 'init-keybind)
;;; init-keybind.el ends here
