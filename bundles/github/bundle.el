;; emacs version 24 includes tabulated-list but for older version's
;; we use @sigma's tabulated-list as backport
(when (not (string-match "^24" emacs-version))
  (cabbage-vendor 'tabulated-list))

(cabbage-vendor 'logito)
(cabbage-vendor 'pcache)
(cabbage-vendor 'gh)
(cabbage-vendor 'gist)

(eval-after-load 'gist
  '(progn
     (cabbage-global-set-key (kbd "C-c g l") 'gist-list)
     (cabbage-global-set-key (kbd "C-c g r") 'gist-region)
     (cabbage-global-set-key (kbd "C-c g p") 'gist-region-private)
     (cabbage-global-set-key (kbd "C-c g b") 'gist-buffer)
     (cabbage-global-set-key (kbd "C-c g u") 'gist-buffer-private)
     (cabbage-global-set-key (kbd "C-c g o") 'gist-region-or-buffer)
     (cabbage-global-set-key (kbd "C-c g e") 'gist-region-or-buffer-private)
     ))
