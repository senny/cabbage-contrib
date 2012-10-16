
(defun cabbage-contrib-robot-mode--setup ()
  (load (concat (cabbage-vendor-library-dir 'robot-mode) "robot-mode"))
  (add-to-list 'auto-mode-alist '("/tests/.*\\.txt\\'" . robot-mode))
  (add-hook 'robot-mode-hook 'cabbage-plone--python-setup-testing))

(add-hook 'cabbage-initialized-hook 'cabbage-contrib-robot-mode--setup)
