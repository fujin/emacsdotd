(provide 'init-circe)

(quelpa 'circe)

(load-file "~/.private.el")

(setq circe-network-options
      `(("freenode"
         :nick "fujin"
         :channels ("#go-chef" "#chef" "#chef-hacking")
         :nickserv-password ,freenode-password
         )))
