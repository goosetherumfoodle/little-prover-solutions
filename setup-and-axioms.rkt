(include-book "j-bob-lang" :dir :teachpacks)
(include-book "j-bob" :dir :teachpacks)
(include-book "little-prover" :dir :teachpacks)

;; Template proof

;; (J-Bob/prove (prelude)
;;              '(((dethm duh (a)
;;                        (equal a a))
;;                 nil)))

;; Axioms

;; CONS

;;(dethm atom/cons (x y)
;;       (equal (atom (cons x y)) 'nil))

;;(dethm car/cons (x y)
;;       (equal (car (cons x y)) x))

;;(dethm cdr/cons (x y)
;;       (equal (cdr (cons x y)) y))

;; (dethm cons/car+cdr (x)
;;        (if (atom x)
;;            't
;;            (equal (cons (car x)
;;                         (cdr x))
;;                   x)))

;; EQUAL

;;(dethm equal-same (x)
;;       (equal (equal x x) 't))

;; (dethm equal-swap (x y)
;;        (equal '(equal x y) '(equal y x)))

;; (dethm equal-if (x y)
;;        (if (equal x y) (equal x y) 't))

;; IF

;; (dethm if-true (x y)
;;        (equal (if 't x y) x))

;; (dethm if-false (x y)
;;       (equal (if 'nil x y) y))

;; (dethm if-same (x y)
;;        (equal (if x y y) y))

;; (dethm if-nest-A (x y z)
;;        (if x (equal (if x y z) y)
;;            't))

;; (dethm if-nest-E (x y z)
;;        (if x 't
;;            (equal (if x y z)
;;                   z)))

;; SIZE

;; (dethhm natp/size (x)
;;         (equal (natp (size x))
;;                't))

;; (dethm size/car (x)
;;        (if (atom x)
;;            't
;;            (equal (< (size (car x)) (size x))
;;                   't)))

;; (dethm size/cdr (x)
;;        (if (atom x)
;;            't
;;            (equal (< (size (cdr x)) (size x))
;;                   't)))
