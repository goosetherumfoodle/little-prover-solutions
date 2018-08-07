;; frame 44
(J-Bob/step (prelude)
              '(car
                (cons (equal (cons x y) (cons x y))
                      '(and crumpets)))
              '(((1 1) (equal-same (cons x y)))
                (() (car/cons 't '(and crumpets)))))

;; 62
(J-Bob/step (prelude)
             '(atom (car (cons (car a) (cdr b))))
              '(((1) (car/cons (car a) (cdr b)))))
