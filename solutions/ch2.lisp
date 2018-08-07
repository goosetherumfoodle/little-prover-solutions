;; frame 67

(J-Bob/step (prelude)
               '(cons 'statement
                      (cons
                       (if (equal a 'question)
                           (cons n '(answer))
                           (cons n '(else)))
                       (if (equal a 'question)
                           (cons n '(other answer))
                           (cons n '(other else)))))
               '(((2) (if-same (equal a 'question)
                               (cons
                       (if (equal a 'question)
                           (cons n '(answer))
                           (cons n '(else)))
                       (if (equal a 'question)
                           (cons n '(other answer))
                           (cons n '(other else))))))))
