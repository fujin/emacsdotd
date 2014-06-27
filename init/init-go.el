(provide 'init-go)

(add-to-list 'load-path "/usr/local/go/misc/emacs")
(require 'go-mode-load)

;; (quelpa 'go-errcheck)
(eval-after-load "go-mode"
  '(progn
     (add-hook 'before-save-hook #'gofmt-before-save)))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
