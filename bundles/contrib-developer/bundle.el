(defun cabbage-contrib-developer-find-cabbage-config ()
  "Find-file in cabbage-contrib repository, openeing a new perspective @contrib"
  (interactive)

  (cabbage-persp "@contrib")
  (find-file (cabbage-ido-open-find-directory-files (cabbage-contrib--find-repo))))

(when (cabbage-bundle-active-p 'ergonomic)
  (cabbage-global-set-key (kbd "C-c C-p")
                          'cabbage-contrib-developer-find-cabbage-config))


;; XXX this should maybe be done with a variable later.
(defun cabbage-contrib--find-repo ()
  (let ((repo-path nil))
    (dolist (path (cabbage--bundle-path 'contrib-developer))
      (when (file-exists-p (concat path ".el"))
        (setq repo-path (expand-file-name (concat path "/../../..")))))
    repo-path))
