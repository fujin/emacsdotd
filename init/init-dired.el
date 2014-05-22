(provide 'init-dired)

(quelpa 'dired+)
(require 'dired+)

(setq ls-lisp-use-insert-directory-program t)
(setq insert-directory-program "ls")
(setq wdired-allow-to-change-permissions t)
(setq dired-listing-switches "-alh")
(define-key dired-mode-map (kbd "M-e") 'wdired-change-to-wdired-mode)
(define-key dired-mode-map (kbd "TAB") 'dired-hide-details-mode)
