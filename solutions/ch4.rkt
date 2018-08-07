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
