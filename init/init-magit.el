(provide 'init-magit)

(quelpa 'magit)
(quelpa 'yagist)
(quelpa 'diff-hl)
;; (setq magit-emacsclient-executable "/home/aj/bin/emacsclient")

(global-set-key (kbd "<f1>") 'magit-status)
(global-diff-hl-mode +1)
