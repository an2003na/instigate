(use-modules (ice-9 rdelim))
(use-modules (ice-9 getopt-long))

; the function gets 2 arguments (k and b coefficients) and finds x variable
(define (solve k b)
  (if (= k 0)
      "Can not divide by zero."
      (exact->inexact (/ (- b) k))))


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
  (let ((k (check-validation (current-input-port))))
    (display "Enter the second coefficient: ")
    (let ((b (check-validation (current-input-port))))
      (display "The linear equation looks like this ")
      (display k)
      (display "*x + ")
      (display b)
      (display " = 0\n")
      (let ((result (solve k b)))
        (display "x = ")
        (display result)
        (newline)))))


(if (equal? (car (command-line)) "linear_equation.scm")
    (main))
