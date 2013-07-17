(cabbage-vendor 'elixir-mode)
(cabbage-vendor 'elixir-mix)

(global-elixir-mix-mode)

(defun cabbage-elixir-mode-hook ()
  (cabbage--set-pairs '("(" "{" "[" "\"" "\'" "|"))

  (when (and buffer-file-name (string-match "_test.exs$" buffer-file-name))
    (setq cabbage-testing-execute-function 'elixir-mix-test-file)))

(add-hook 'elixir-mode-hook 'cabbage-elixir-mode-hook)
