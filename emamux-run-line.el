(defun emamux-run-line ()
  "Marks whole line and does emamux:run-region"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (set-mark (line-end-position))
    (activate-mark)
    (call-interactively 'emamux:run-region)))
