(provide 'init-completion)

(quelpa 'company)
(quelpa 'company-go)

(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load "company"
  '(progn
     ;; (define-key company-active-map (kbd "<tab>") nil)
     ;; (define-key company-active-map (kbd "ESC") 'company-abort)
     ;; (define-key company-active-map (kbd "<C-return>") 'company-abort)

     (setq company-tooltip-limit 20)                      ; bigger popup window
     (setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
     (setq company-echo-delay 0)                          ; remove annoying blinking
     (setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing
     ))
