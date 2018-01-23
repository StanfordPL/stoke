; Global constants
(declare-fun magic () (_ BitVec 16))
(declare-fun hi () (_ BitVec 16))
(declare-fun lo () (_ BitVec 16))

(assert (= #x7eff magic))
(assert (= #x8080 hi))
(assert (= #x0101 lo))

; Functions

(define-fun compute ((x (_ BitVec 16))) (_ BitVec 16)
  (bvand (bvsub x lo) hi))

(define-fun first-byte-zero ((x (_ BitVec 16))) Bool
  (= (bvand #x00ff x) #x0000)
)

(define-fun second-byte-zero ((x (_ BitVec 16))) Bool
  (= (bvand #xff00 x) #x0000)
)

(define-fun has-zero ((x (_ BitVec 16))) Bool
  (or (first-byte-zero x) (second-byte-zero x)) 
)

(declare-fun x () (_ BitVec 16))

(assert (= (compute x) #x0000))
(assert (has-zero x))

(check-sat)
(get-model)

