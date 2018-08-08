;; proving contradiction (making 'nil == 't)

(J-Bob/prove
 ;; don't think this can happen in a `define` b/c
 ;; there's no measure?
 (list-extend (prelude)
              '(defun partial (x)
                 (if (partial x) 'nil 't)))
 '(((dethm contradiction () 'nil)
    nil
    (() (if-same (partial x) 'nil))
    ((A) (if-nest-A (partial x) 'nil 't))
    ((E) (if-nest-E (partial x) 't 'nil))
    ((A Q) (partial x))
    ((E Q) (partial x))
    ((A Q) (if-nest-A (partial x) 'nil 't))
    ((E Q) (if-nest-E (partial x) 'nil 't))
    ((A) (if-false 'nil 't))
    ((E) (if-true 't 'nil))
    (() (if-same (partial x) 't)))))

(defun prelude+ch4 ()
  (J-Bob/define (prelude)
                '(((defun list? (x)
                     (if (atom x)
                         (equal x '())
                         (list? (cdr x))))

                   (size x)

                   ((Q) (natp/size x))
                   (() (if-true
                        (if (atom x)
                            't
                            (< (size (cdr x))
                               (size x)))
                        'nil))
                   ((E) (size/cdr x))
                   (() (if-same (atom x) 't)))

                  ((defun sub (x y)
                     (if (atom y)
                         (if (equal y '?)
                             x
                             y)
                         (cons (sub x (car y))
                               (sub x (cdr y)))))

                   (size y)

                   ((Q) (natp/size y))
                   (() (if-true (if (atom y)
                                    't
                                    (if (< (size (car y)) (size y))
                                        (< (size (cdr y)) (size y))
                                        'nil))
                                'nil))
                   ((E Q) (size/car y))
                   ((E A) (size/cdr y))
                   ((E) (if-true 't 'nil))
                   (() (if-same (atom y) 't))))))
