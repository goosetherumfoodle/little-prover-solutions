(defun prelude+pairs ()
  (J-Bob/define (prelude)
                '(((defun pair (x y)
                     (cons x (cons y '())))
                   nil)

                  ((defun first-of (x)
                     (car x))
                   nil)

                  ((defun second-of (x)
                     (car (cdr x)))
                   nil)

                  ((defun in-pair? (xs)
                     (if (equal (first-of xs) '?)
                         't
                         (equal (second-of xs)
                                '?)))
                   nil)

                  ((dethm first-of-pair (a b)
                          (equal (first-of (pair a b))
                                 a))

                   nil

                   ((1 1) (pair a b))
                   ((1) (first-of (cons a (cons b 'nil))))
                   ((1) (car/cons a (cons b 'nil)))
                   (() (equal-same a)))

                  ((dethm second-of-pair (a b)
                          (equal (second-of (pair a b))
                                 b))
                   nil

                   ((1 1) (pair a b))
                   ((1) (second-of (cons a (cons b 'nil))))
                   ((1 1) (cdr/cons a (cons b 'nil)))
                   ((1) (car/cons b 'nil))
                   (() (equal-same b)))

                  ((dethm in-first-of-pair (b)
                          (equal (in-pair? (pair '? b))
                                 't))
                   nil

                   ((1 1) (pair '? b))
                   ((1) (in-pair? (cons '? (cons b 'nil))))
                   ((1 Q 1) (first-of (cons '? (cons b 'nil))))
                   ((1 Q 1) (car/cons '? (cons b 'nil)))
                   ((1 Q) (equal-same '?))
                   ((1) (if-true 't (equal (second-of (cons '? (cons b 'nil))) '?)))
                   (() (equal-same 't)))

                  ((dethm in-second-of-pair (a)
                           (equal (in-pair? (pair a '?))
                                  't))
                    nil

                    ((1 1) (pair a '?))
                    ((1) (in-pair? (cons a (cons '? 'nil))))
                    ((1 Q 1) (first-of (cons a (cons '? 'nil))))
                    ((1 E 1) (second-of (cons a (cons '? 'nil))))
                    ((1 E 1 1) (cdr/cons a (cons '? 'nil)))
                    ((1 E 1) (car/cons '? 'nil))
                    ((1 E) (equal-same '?))
                    ((1) (if-same (equal (car (cons a (cons '? 'nil))) '?) 't))
                    (() (equal-same 't))))))
