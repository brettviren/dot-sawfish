(provide 'bv-paste)

(defun xpasteto (w)
  "Paste current selection into current window"
  (interactive "%f")
  (require 'selection)
  (let ((selection  (x-get-selection 'PRIMARY)))
    (let ((cmd (format nil "xdotool type --delay 0 --window %d \"%s\"" (window-id w) selection)))
      (message cmd)
;      (display-message cmd)
      (system cmd))))



	 


