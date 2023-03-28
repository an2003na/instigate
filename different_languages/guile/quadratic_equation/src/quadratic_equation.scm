(use-modules (ice-9 rdelim))
(use-modules (ice-9 getopt-long))


;the function gets a, b and c coefficients in argument
;and solves quadratic equation
(define (solve a b c)
  (let ((discr (- (* b b) (* 4 a c))))
    (cond
      ((= a 0) "Error. Can not divide by zero.")
      ((> discr 0)
       (let ((root1 (exact->inexact (/ (+ (- b) (sqrt discr)) (* 2 a))))
             (root2 (exact->inexact (/ (- (- b) (sqrt discr)) (* 2 a)))))
         (string-append "Roots of the equation are " (number->string root1) " and " (number->string root2))))
      ((= discr 0)
       (let ((root1 (exact->inexact (/ (- b) (* 2 a)))))
         (string-append "The equation has one real root: " (number->string root1))))
      (else
       (let ((real_part (exact->inexact (/ b (* 2 a))))
             (imag_part (exact->inexact (/ (sqrt (- discr)) (* 2 a)))))
         (let ((root1 (string-append (number->string real_part) "+" (number->string imag_part) "*i"))
               (root2 (string-append (number->string real_part) "-" (number->string imag_part) "*i")))
           (string-append "The equation hasn't real roots.\nThe complex roots of equation are " root1 " and " root2)))))))


;the function gets user input and checks its validation.
(define (check-validation port)
  (let loop ()
    (let ((str (read-line port)))
      (if (string->number str)
          (string->number str)
          (begin
            (display "Your input is invalid. Enter only numbers: ")
            (loop))))))

(define (main)
  (display "Enter the first coefficient: ")
  (let ((a (check-validation (current-input-port))))
    (display "Enter the second coefficient: ")
    (let ((b (check-validation (current-input-port))))
      (display "Enter the third coefficient: ")
      (let ((c (check-validation (current-input-port))))
        (display "The quadratic equation looks like this ")
        (display a)
        (display "*x^2 + ")
        (display b)
        (display "*x + ")
        (display c)
        (display " = 0\n")
        (let ((result (solve a b c)))
          (display result)
          (newline))))))




(if (equal? (car (command-line)) "quadratic_equation.scm")
    (main))
