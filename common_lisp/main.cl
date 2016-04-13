(defun shuffle (list)
  (let ((len (length list)))
    (loop repeat len
          do
          (rotatef
            (nth (random len) list)
            (nth (random len) list))
          finally
          (return list))))

(defun main ()
  (let ((names (shuffle '("Matt" "Brandy")))
        (factions (shuffle '("French" "British"))))
    (let ((pairs (mapcar #'list names factions)))
      (loop for pair in pairs
            do (print pair))))
  (format t "~C~C" #\return #\linefeed))

(setf *random-state* (make-random-state t))
(main)
