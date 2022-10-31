;; define counter variable
(define-data-var counter int 0)

;; counter getter
(define-read-only (get-counter)
    (ok (var-get counter)))

;; increase method
(define-public (up)
    (begin 
        (var-set counter (+ (var-get counter) 1))
        (ok (var-get counter))
    )
)

;; decrease method
(define-public (down)
    (begin
        (var-set counter (- (var-get counter) 1))
        (ok (var-get counter))
    )
)

;; decimal increase method
(define-public (dec-up)
    (begin
        (var-set counter (* (var-get counter) 10))
        (ok (var-get counter))
    )
)

;; decimal decrease method
(define-public (dec-down)
    (begin
        (var-set counter (/ (var-get counter) 10))
        (ok (var-get counter))
    )
)