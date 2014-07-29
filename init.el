;;; init

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

(mapc 'require
      '(
	;;; Always bootstrap first
        init-bootstrap

	;; These all use the (quelpa) form.
        init-ack
        init-anzu
        init-appearance
        init-circe
        init-clojure
        init-completion
        init-crontab
        init-deft
        init-defuns
        init-dired
        init-erc
        init-expand-region
        init-flycheck
        init-go
        init-haskell
        init-ido
        init-js
        init-keymaps
        init-magit
        init-markdown
        init-modeline
        init-parens
        init-projectile
        init-python
        init-ruby
        init-session
        init-settings
        init-snippets
        init-web
        init-yaml
        init-org
		 ))
(require 'server)
(unless (server-running-p)
  (server-start))
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
