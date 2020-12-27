;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file "~/.emacs.d/config.org")

;; (use-package hide-mode-line)
;; (add-hook 'pdf-view-mode-hook (internal-show-cursor nil nil))

(add-hook 'pdf-view-mode-hook (lambda ()
				(progn
				  ;; (define-key pdf-view-mode-map  (kbd "<mouse-3>")  'pdf-view-previous-page)
				  ;; (define-key pdf-view-mode-map "d" 'pdf-view-previous-page)
				  (define-key pdf-view-mode-map "d" 'pdf-view-next-page)
				  (define-key pdf-view-mode-map "a" 'pause)
				  (define-key pdf-view-mode-map "s" 'resume)
				  ;; (define-key pdf-view-mode-map  (kbd "<mouse-1>")  'pdf-view-next-page)
				  )))

				  (define-key pdf-view-mode-map "d" 'pdf-view-next-page)
(setq pdf-view-use-scaling t)
