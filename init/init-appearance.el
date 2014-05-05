(provide 'init-appearance)

(quelpa '(color-theme-solarized
	  :repo "sellout/emacs-color-theme-solarized"
	  :fetcher github))

(quelpa 'dash)
(require 'dash)

(load-theme 'solarized-dark t)
