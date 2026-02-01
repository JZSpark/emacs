(setq make-backup-files nil)

;;;
(global-set-key (kbd "C-c i")
		(lambda ()
		  (interactive)
		  (find-file (expand-file-name "init.el" work-path))))

(provide 'core)
