;; Problem 1
;; Find the last box of a list
(define (my-last xs)
  (if (not (list? xs))
      (display "not-a-list\n")
      (if (null? (cdr xs)) ;; Last element of the list
          (list (car xs))
          (my-last (cdr xs)))))

;; Problem 2
;; Find the last but one box of a list
(define (my-but-last xs)
  (if (not (list? xs))
      (display "not a list\n")
      (if (null? (cddr xs))
          xs
          (my-but-last (cdr xs)))))

;; Problem 3
;; Find the K'th element of a list
(define (element-at xs k)
  (if (and (integer? k) (list? xs))
      (letrec [(with-num (lambda (ys m)
                           (if (= m 1)
                               (car ys)
                               (with-num (cdr ys) (- m 1)))))]
        (with-num xs k))
      (display "first argument should be a list and second should be an integer\n")))

;; Problem 4
;; Find the number of elements in a list
(define (num-elements xs)
  (if (null? xs)
      0
      (+ 1 (num-elements (cdr xs)))))

;; Problem 5
;; Reverse a list
(define (list-reverse xs)
  (if (null? (cdr xs))
      xs
      (append (list-reverse (cdr xs))
              (list (car xs)))))

;; Problem 6
;; Check if a list is a palindrome
(define (palindrome? xs)
  (equal? xs (list-reverse xs)))

