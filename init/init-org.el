(provide 'init-org)
(quelpa 's)
(quelpa 'org)
(quelpa 'auctex)
(quelpa 'timesheet)

(require 'org)
(require 'org-compat)

(require 'timesheet)

(define-prefix-command 'outline-map)
(global-set-key (kbd "<f10>") 'outline-map)
(define-key outline-map (kbd "c") 'timesheet-clock-update-timeclock)
(define-key outline-map (kbd "t") 'timesheet-calc-today) ; today
(define-key outline-map (kbd "y") 'timesheet-calc-yesterday) ; yesterday
(define-key outline-map (kbd "T") 'timesheet-calc-at-point)
(define-key outline-map (kbd "w") 'timesheet-weekly-this) ; this week
(define-key outline-map (kbd "Y") 'timesheet-weekly-last) ; last week
(define-key outline-map (kbd "W") 'timesheet-weekly-at-point)
(define-key outline-map (kbd "4") 'timesheet-invoice-this) ; this month
(define-key outline-map (kbd "$") 'timesheet-invoice-last) ; last moint
