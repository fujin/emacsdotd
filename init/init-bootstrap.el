(provide 'init-bootstrap)
(require 'cl)
(require 'cl-lib)

(push "/usr/local/bin" exec-path)
(push "/usr/bin" exec-path)
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

(if (require 'quelpa nil t)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))
