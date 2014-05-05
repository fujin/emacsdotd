(provide 'init-settings)

(setq create-lockfiles nil)
(setq ring-bell-function 'ignore)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(setq auto-save-default nil)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)
(setq fill-column 85)
(setq initial-major-mode 'emacs-lisp-mode)
(setq initial-scratch-message nil)

(menu-bar-mode -1)

(global-auto-revert-mode 1)
(setq require-final-newline t)

(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode t)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)
(setq-default indicate-buffer-boundaries nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq indicate-empty-lines nil)
(recentf-mode 1)

(defun save-all ()
  (interactive)
  (save-some-buffers t))
(add-hook 'focus-out-hook 'save-all)
