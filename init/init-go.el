(provide 'init-go)

(quelpa 'go-mode)
(require 'go-mode-load)

(quelpa 'go-errcheck)

(eval-after-load "go-mode"
  '(progn

     (add-hook 'before-save-hook #'gofmt-before-save)
     (add-to-list 'flycheck-checkers 'go-gofmt)))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
