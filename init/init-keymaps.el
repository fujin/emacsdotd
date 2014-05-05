(provide 'init-keymaps)

; Hold-overs from @technomancy ESK v1.
(global-set-key (kbd "C-c n") 'fujin/cleanup-buffer)

; Readline behavior
(global-set-key (kbd "C-M-h") 'backward-kill-word)
