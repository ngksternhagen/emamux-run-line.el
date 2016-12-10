;;; emamux-run-line.el --- run the current line with emamux

;;; Version: 0.0.0
;;; Author: NGK Sternhagen <sternhagen@protonmail.ch>
;;; Url: https://gitlab.com/skwuent/emamux-run-line.el
;;; Keywords: tmux emamux
;;; Created: 9 December 2016

;;;###autoload
(defun emamux-run-line ()
  "Marks whole line and does emamux:run-region"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (set-mark (line-end-position))
    (activate-mark)
    (call-interactively 'emamux:run-region)))

(provide 'emamux-run-line)

;;; emamux-run-line.el ends here
