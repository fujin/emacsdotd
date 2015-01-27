(provide 'init-go)

;; (add-to-list 'load-path (expand-file-name "/usr/local/go/misc/emacs"))

(if (require 'go-mode-load nil t)
    (quelpa '(go-mode :repo "dominikh/go-mode.el" :fetcher github)))
;;    (require 'go-mode-load))

(quelpa 'go-eldoc)
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(quelpa 'go-errcheck)

(eval-after-load "go-mode"
  '(progn
     (setq gofmt-command "goimports")
     (add-hook 'before-save-hook #'gofmt-before-save)))

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
