;;; init-startup.el --- settings for Emacs startup.
;;; Commentary:

;;; Code:
;(prefer-coding-system 'utf-8)
;(set-default-coding-systems 'utf-8)
;(set-terminal-coding-system 'utf-8)
;(set-keyboard-coding-system 'utf-8)
;(setq default-buffer-file-coding-system 'utf-8)

;;; macOS
;; move file to trash when delete
(when (eq system-type 'darwin)
  (setq delete-by-moving-to-trash t))

;; do not show start screen
(setq inhibit-startup-screen t)

(provide 'init-startup)
;;; init-startup.el ends here
