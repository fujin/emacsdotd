(provide 'init-keymaps)

; Hold-overs from @technomancy ESK v1.
(global-set-key (kbd "C-c n") 'fujin/cleanup-buffer)

(global-set-key (kbd "C-c j") 'fujin/mark-buffer-then-format-json-and-reindent)

; Readline behavior
(global-set-key (kbd "C-M-h") 'backward-kill-word)
