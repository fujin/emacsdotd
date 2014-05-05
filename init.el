;;; init

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

(mapc 'require '(init-bootstrap
		 init-defuns
		 init-appearance
		 init-ido
		 init-completion
		 init-projectile
		 init-magit
		 init-expand-region
		 init-web
		 init-parens
		 init-modeline
		 init-markdown
		 init-js
		 init-flycheck
		 init-yaml
		 init-ruby
		 init-session
		 init-deft
		 init-dired
		 init-clojure
		 init-crontab
		 init-anzu
		 init-snippets
		 init-ack
		 init-erc
		 init-go
     init-settings
		 ))
(require 'server)
(unless (server-running-p)
  (server-start))
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)