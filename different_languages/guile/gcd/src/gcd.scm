(use-modules (ice-9 rdelim))
(use-modules (ice-9 getopt-long))

;the function gets user input and checks its validation.
;The input must be a positive integer.
(define (check-validation port)
  (let loop ()
    (let ((str (read-line port)))
      (if (string->number str)
          (let ((num (string->number str)))
            (if (positive? num)
                num
                (begin
                  (display "Your input is invalid. Enter only positive integers: ")
                  (loop))))
          (begin
            (display "Your input is invalid. Enter only positive integers: ")
            (loop))))))

;the function gets two numbers in argument and returns
;their greatest common divider
(define (gcd a b)
  (define temp)
  (while (not (= b 0))
         (set! temp b)
         (set! b (modulo a b))
         (set! a temp))
  a)


(define (main)
  (display "Enter the first number: ")
  (let ((a (check-validation (current-input-port))))
    (display "Enter the second number: ")
    (let ((b (check-validation (current-input-port))))
      (let ((result (gcd a b)))
        (display "The GCD is: ")
        (display result)
        (newline)))))


(if (equal? (car (command-line)) "gcd.scm")
    (main))

