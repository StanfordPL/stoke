; Global constants
(declare-fun magic () (_ BitVec 32))
(declare-fun hi () (_ BitVec 32))
(declare-fun lo () (_ BitVec 32))

(assert (= #x7efefeff magic))
(assert (= #x80808080 hi))
(assert (= #x01010101 lo))

; Functions

(define-fun compute ((x (_ BitVec 32))) (_ BitVec 32)
  (bvand (bvsub x lo) hi))

(define-fun first-byte-zero ((x (_ BitVec 32))) Bool
  (= (bvand #x000000ff x) #x00000000)
)

(define-fun second-byte-zero ((x (_ BitVec 32))) Bool
  (= (bvand #x0000ff00 x) #x00000000)
)

(define-fun third-byte-zero ((x (_ BitVec 32))) Bool
  (= (bvand #x00ff0000 x) #x00000000)
)

(define-fun fourth-byte-zero ((x (_ BitVec 32))) Bool
  (= (bvand #xff000000 x) #x00000000)
)

(define-fun has-zero ((x (_ BitVec 32))) Bool
  (or (first-byte-zero x) (second-byte-zero x) (third-byte-zero x) (fourth-byte-zero x)) 
)

(declare-fun x () (_ BitVec 32))

(assert (= (compute x) #x00000000))
(assert (has-zero x))

(check-sat)
(get-model)

