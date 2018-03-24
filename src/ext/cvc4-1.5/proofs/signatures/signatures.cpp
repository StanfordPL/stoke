namespace CVC4 {
namespace proof {

extern const char *const plf_signatures;
const char *const plf_signatures = "\
(declare bool type)\n\
(declare tt bool)\n\
(declare ff bool)\n\
\n\
(declare var type)\n\
\n\
(declare lit type)\n\
(declare pos (! x var lit))\n\
(declare neg (! x var lit))\n\
\n\
(declare clause type)\n\
(declare cln clause)\n\
(declare clc (! x lit (! c clause clause)))\n\
\n\
; constructs for general clauses for R, Q, satlem\n\
\n\
(declare concat_cl (! c1 clause (! c2 clause clause)))\n\
(declare clr (! l lit (! c clause clause)))\n\
\n\
; code to check resolutions\n\
\n\
(program append ((c1 clause) (c2 clause)) clause\n\
  (match c1 (cln c2) ((clc l c1') (clc l (append c1' c2)))))\n\
\n\
; we use marks as follows:\n\
; -- mark 1 to record if we are supposed to remove a positive occurrence of the variable.\n\
; -- mark 2 to record if we are supposed to remove a negative occurrence of the variable.\n\
; -- mark 3 if we did indeed remove the variable positively\n\
; -- mark 4 if we did indeed remove the variable negatively\n\
(program simplify_clause ((c clause)) clause\n\
  (match c\n\
    (cln cln)\n\
    ((clc l c1)\n\
      (match l\n\
        ; Set mark 1 on v if it is not set, to indicate we should remove it.\n\
        ; After processing the rest of the clause, set mark 3 if we were already\n\
        ; supposed to remove v (so if mark 1 was set when we began).  Clear mark3\n\
        ; if we were not supposed to be removing v when we began this call.\n\
        ((pos v)\n\
          (let m (ifmarked v tt (do (markvar v) ff))\n\
          (let c' (simplify_clause c1)\n\
            (match m\n\
              (tt (do (ifmarked3 v v (markvar3 v)) c'))\n\
              (ff (do (ifmarked3 v (markvar3 v) v) (markvar v) (clc l c')))))))\n\
        ; the same as the code for tt, but using different marks.\n\
        ((neg v)\n\
          (let m (ifmarked2 v tt (do (markvar2 v) ff))\n\
          (let c' (simplify_clause c1)\n\
            (match m\n\
              (tt (do (ifmarked4 v v (markvar4 v)) c'))\n\
              (ff (do (ifmarked4 v (markvar4 v) v) (markvar2 v) (clc l c')))))))))\n\
    ((concat_cl c1 c2) (append (simplify_clause c1) (simplify_clause c2)))\n\
    ((clr l c1)\n\
      (match l\n\
        ; set mark 1 to indicate we should remove v, and fail if\n\
        ; mark 3 is not set after processing the rest of the clause\n\
        ; (we will set mark 3 if we remove a positive occurrence of v).\n\
        ((pos v)\n\
            (let m (ifmarked v tt (do (markvar v) ff))\n\
            (let m3 (ifmarked3 v (do (markvar3 v) tt) ff)\n\
            (let c' (simplify_clause c1)\n\
              (ifmarked3 v (do (match m3 (tt v) (ff (markvar3 v)))\n\
                                (match m (tt v) (ff (markvar v))) c')\n\
                          (fail clause))))))\n\
        ; same as the tt case, but with different marks.\n\
        ((neg v)\n\
            (let m2 (ifmarked2 v tt (do (markvar2 v) ff))\n\
            (let m4 (ifmarked4 v (do (markvar4 v) tt) ff)\n\
            (let c' (simplify_clause c1)\n\
              (ifmarked4 v (do (match m4 (tt v) (ff (markvar4 v)))\n\
                                (match m2 (tt v) (ff (markvar2 v))) c')\n\
                          (fail clause))))))\n\
   ))))\n\
\n\
\n\
; resolution proofs\n\
\n\
(declare holds (! c clause type))\n\
\n\
(declare R (! c1 clause (! c2 clause\n\
           (! u1 (holds c1)\n\
           (! u2 (holds c2)\n\
           (! n var\n\
            (holds (concat_cl (clr (pos n) c1)\n\
                     (clr (neg n) c2)))))))))\n\
\n\
(declare Q (! c1 clause (! c2 clause\n\
           (! u1 (holds c1)\n\
           (! u2 (holds c2)\n\
           (! n var\n\
            (holds (concat_cl (clr (neg n) c1)\n\
                     (clr (pos n) c2)))))))))\n\
\n\
(declare satlem_simplify\n\
                (! c1 clause\n\
                (! c2 clause\n\
                (! c3 clause\n\
                (! u1 (holds c1)\n\
                (! r (^ (simplify_clause c1) c2)\n\
                (! u2 (! x (holds c2) (holds c3))\n\
                   (holds c3))))))))\n\
\n\
(declare satlem\n\
  (! c clause\n\
  (! c2 clause\n\
  (! u (holds c)\n\
  (! u2 (! v (holds c) (holds c2))\n\
    (holds c2))))))\n\
\n\
; A little example to demonstrate simplify_clause.\n\
; It can handle nested clr's of both polarities,\n\
; and correctly cleans up marks when it leaves a\n\
; clr or clc scope.  Uncomment and run with\n\
; --show-runs to see it in action.\n\
;\n\
; (check\n\
;   (% v1 var\n\
;   (% u1 (holds (concat_cl (clr (neg v1) (clr (pos v1) (clc (pos v1) (clr (pos v1) (clc (pos v1) (clc (neg v1) cln))))))\n\
;                    (clc (pos v1) (clc (pos v1) cln))))\n\
;    (satlem _ _ _ u1 (\\ x x))))))\n\
\n\
\n\
;(check\n\
;   (% v1 var\n\
;   (% u1 (holds (clr (neg v1) (concat_cl (clc (neg v1) cln)\n\
;                                      (clr (neg v1) (clc (neg v1) cln)))))\n\
;    (satlem _ _ _ u1 (\\ x x))))))\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; SMT syntax and semantics (not theory-specific)\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
; depends on sat.plf\n\
\n\
(declare formula type)\n\
(declare th_holds (! f formula type))\n\
\n\
; standard logic definitions\n\
(declare true formula)\n\
(declare false formula)\n\
\n\
(define formula_op1\n\
	(! f formula\n\
	formula))\n\
\n\
(define formula_op2\n\
	(! f1 formula\n\
	(! f2 formula\n\
	   formula)))\n\
\n\
(define formula_op3\n\
	(! f1 formula\n\
	(! f2 formula\n\
	(! f3 formula\n\
	   formula))))\n\
\n\
(declare not formula_op1)\n\
(declare and formula_op2)\n\
(declare or formula_op2)\n\
(declare impl formula_op2)\n\
(declare iff formula_op2)\n\
(declare xor formula_op2)\n\
(declare ifte formula_op3)\n\
\n\
; terms\n\
(declare sort type)\n\
(declare term (! t sort type))	; declared terms in formula\n\
\n\
; standard definitions for =, ite, let and flet\n\
(declare = (! s sort\n\
           (! x (term s)\n\
           (! y (term s)\n\
             formula))))\n\
(declare ite (! s sort\n\
             (! f formula\n\
             (! t1 (term s)\n\
             (! t2 (term s)\n\
               (term s))))))\n\
(declare let (! s sort\n\
             (! t (term s)\n\
             (! f (! v (term s) formula)\n\
               formula))))\n\
(declare flet (! f1 formula\n\
              (! f2 (! v formula formula)\n\
                formula)))\n\
\n\
; We view applications of predicates as terms of sort \"Bool\".\n\
; Such terms can be injected as atomic formulas using \"p_app\".\n\
(declare Bool sort)				; the special sort for predicates\n\
(declare p_app (! x (term Bool) formula))	; propositional application of term\n\
\n\
; boolean terms\n\
(declare t_true (term Bool))\n\
(declare t_false (term Bool))\n\
(declare t_t_neq_f\n\
 (th_holds (not (= Bool t_true t_false))))\n\
(declare pred_eq_t\n\
 (! x (term Bool)\n\
 (! u (th_holds (p_app x))\n\
   (th_holds (= Bool x t_true)))))\n\
\n\
(declare pred_eq_f\n\
 (! x (term Bool)\n\
 (! u (th_holds (not (p_app x)))\n\
   (th_holds (= Bool x t_false)))))\n\
\n\
(declare f_to_b\n\
  (! f formula\n\
    (term Bool)))\n\
\n\
(declare true_preds_equal\n\
  (! x1 (term Bool)\n\
  (! x2 (term Bool)\n\
  (! u1 (th_holds (p_app x1))\n\
  (! u2 (th_holds (p_app x2))\n\
    (th_holds (= Bool x1 x2)))))))\n\
\n\
(declare false_preds_equal\n\
  (! x1 (term Bool)\n\
  (! x2 (term Bool)\n\
  (! u1 (th_holds (not (p_app x1)))\n\
  (! u2 (th_holds (not (p_app x2)))\n\
    (th_holds (= Bool x1 x2)))))))\n\
\n\
(declare pred_refl_pos\n\
  (! x1 (term Bool)\n\
  (! u1 (th_holds (p_app x1))\n\
    (th_holds (= Bool x1 x1)))))\n\
\n\
(declare pred_refl_neg\n\
  (! x1 (term Bool)\n\
  (! u1 (th_holds (not (p_app x1)))\n\
    (th_holds (= Bool x1 x1)))))\n\
\n\
(declare pred_not_iff_f\n\
  (! x (term Bool)\n\
  (! u (th_holds (not (iff false (p_app x))))\n\
    (th_holds (= Bool t_true x)))))\n\
\n\
(declare pred_not_iff_f_2\n\
  (! x (term Bool)\n\
  (! u (th_holds (not (iff (p_app x) false)))\n\
    (th_holds (= Bool x t_true)))))\n\
\n\
(declare pred_not_iff_t\n\
  (! x (term Bool)\n\
  (! u (th_holds (not (iff true (p_app x))))\n\
    (th_holds (= Bool t_false x)))))\n\
\n\
(declare pred_not_iff_t_2\n\
  (! x (term Bool)\n\
  (! u (th_holds (not (iff (p_app x) true)))\n\
    (th_holds (= Bool x t_false)))))\n\
\n\
(declare pred_iff_f\n\
  (! x (term Bool)\n\
  (! u (th_holds (iff false (p_app x)))\n\
    (th_holds (= Bool t_false x)))))\n\
\n\
(declare pred_iff_f_2\n\
  (! x (term Bool)\n\
  (! u (th_holds (iff (p_app x) false))\n\
    (th_holds (= Bool x t_false)))))\n\
\n\
(declare pred_iff_t\n\
  (! x (term Bool)\n\
  (! u (th_holds (iff true (p_app x)))\n\
    (th_holds (= Bool t_true x)))))\n\
\n\
(declare pred_iff_t_2\n\
  (! x (term Bool)\n\
  (! u (th_holds (iff (p_app x) true))\n\
    (th_holds (= Bool x t_true)))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; CNF Clausification\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
; binding between an LF var and an (atomic) formula\n\
\n\
(declare atom (! v var (! p formula type)))\n\
\n\
; binding between two LF vars\n\
(declare bvatom (! sat_v var (! bv_v var type)))\n\
\n\
(declare decl_atom\n\
  (! f formula\n\
  (! u (! v var\n\
       (! a (atom v f)\n\
         (holds cln)))\n\
    (holds cln))))\n\
\n\
;; declare atom enhanced with mapping\n\
;; between SAT prop variable and BVSAT prop variable\n\
(declare decl_bvatom\n\
  (! f formula\n\
  (! u (! v var\n\
       (! bv_v var\n\
       (! a (atom v f)\n\
       (! bva (atom bv_v f)\n\
       (! vbv (bvatom v bv_v)\n\
         (holds cln))))))\n\
    (holds cln))))\n\
\n\
\n\
; clausify a formula directly\n\
(declare clausify_form\n\
  (! f formula\n\
  (! v var\n\
  (! a (atom v f)\n\
  (! u (th_holds f)\n\
    (holds (clc (pos v) cln)))))))\n\
\n\
(declare clausify_form_not\n\
  (! f formula\n\
  (! v var\n\
  (! a (atom v f)\n\
  (! u (th_holds (not f))\n\
    (holds (clc (neg v) cln)))))))\n\
\n\
(declare clausify_false\n\
  (! u (th_holds false)\n\
    (holds cln)))\n\
\n\
(declare th_let_pf\n\
  (! f formula\n\
  (! u (th_holds f)\n\
  (! u2 (! v (th_holds f) (holds cln))\n\
    (holds cln)))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; Natural deduction rules : used for CNF\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
;; for eager bit-blasting\n\
(declare iff_symm\n\
	(! f formula\n\
	   (th_holds (iff f f))))\n\
\n\
\n\
;; contradiction\n\
\n\
(declare contra\n\
  (! f formula\n\
  (! r1 (th_holds f)\n\
  (! r2 (th_holds (not f))\n\
    (th_holds false)))))\n\
\n\
; truth\n\
(declare truth (th_holds true))\n\
\n\
;; not not\n\
\n\
(declare not_not_intro\n\
  (! f formula\n\
  (! u (th_holds f)\n\
    (th_holds (not (not f))))))\n\
\n\
(declare not_not_elim\n\
  (! f formula\n\
  (! u (th_holds (not (not f)))\n\
    (th_holds f))))\n\
\n\
;; or elimination\n\
\n\
(declare or_elim_1\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (not f1))\n\
  (! u2 (th_holds (or f1 f2))\n\
    (th_holds f2))))))\n\
\n\
(declare or_elim_2\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (not f2))\n\
  (! u2 (th_holds (or f1 f2))\n\
    (th_holds f1))))))\n\
\n\
(declare not_or_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u2 (th_holds (not (or f1 f2)))\n\
    (th_holds (and (not f1) (not f2)))))))\n\
\n\
;; and elimination\n\
\n\
(declare and_elim_1\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u (th_holds (and f1 f2))\n\
    (th_holds f1)))))\n\
\n\
(declare and_elim_2\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u (th_holds (and f1 f2))\n\
    (th_holds f2)))))\n\
\n\
(declare not_and_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u2 (th_holds (not (and f1 f2)))\n\
    (th_holds (or (not f1) (not f2)))))))\n\
\n\
;; impl elimination\n\
\n\
(declare impl_intro (! f1 formula\n\
                    (! f2 formula\n\
                    (! i1 (! u (th_holds f1)\n\
                              (th_holds f2))\n\
                      (th_holds (impl f1 f2))))))\n\
\n\
(declare impl_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u2 (th_holds (impl f1 f2))\n\
    (th_holds (or (not f1) f2))))))\n\
\n\
(declare not_impl_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u (th_holds (not (impl f1 f2)))\n\
    (th_holds (and f1 (not f2)))))))\n\
\n\
;; iff elimination\n\
\n\
(declare iff_elim_1\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (iff f1 f2))\n\
    (th_holds (or (not f1) f2))))))\n\
\n\
(declare iff_elim_2\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (iff f1 f2))\n\
    (th_holds (or f1 (not f2)))))))\n\
\n\
(declare not_iff_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u2 (th_holds (not (iff f1 f2)))\n\
    (th_holds (iff f1 (not f2)))))))\n\
\n\
; xor elimination\n\
\n\
(declare xor_elim_1\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (xor f1 f2))\n\
    (th_holds (or (not f1) (not f2)))))))\n\
\n\
(declare xor_elim_2\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u1 (th_holds (xor f1 f2))\n\
    (th_holds (or f1 f2))))))\n\
\n\
(declare not_xor_elim\n\
  (! f1 formula\n\
  (! f2 formula\n\
  (! u2 (th_holds (not (xor f1 f2)))\n\
    (th_holds (iff f1 f2))))))\n\
\n\
;; ite elimination\n\
\n\
(declare ite_elim_1\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (ifte a b c))\n\
    (th_holds (or (not a) b)))))))\n\
\n\
(declare ite_elim_2\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (ifte a b c))\n\
    (th_holds (or a c)))))))\n\
\n\
(declare ite_elim_3\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (ifte a b c))\n\
    (th_holds (or b c)))))))\n\
\n\
(declare not_ite_elim_1\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (not (ifte a b c)))\n\
    (th_holds (or (not a) (not b))))))))\n\
\n\
(declare not_ite_elim_2\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (not (ifte a b c)))\n\
    (th_holds (or a (not c))))))))\n\
\n\
(declare not_ite_elim_3\n\
  (! a formula\n\
  (! b formula\n\
  (! c formula\n\
  (! u2 (th_holds (not (ifte a b c)))\n\
    (th_holds (or (not b) (not c))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; For theory lemmas\n\
; - make a series of assumptions and then derive a contradiction (or false)\n\
; - then the assumptions yield a formula like \"v1 -> v2 -> ... -> vn -> false\"\n\
; - In CNF, it becomes a clause: \"~v1, ~v2, ..., ~vn\"\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(declare ast\n\
  (! v var\n\
  (! f formula\n\
  (! C clause\n\
  (! r (atom v f)       ;this is specified\n\
  (! u (! o (th_holds f)\n\
         (holds C))\n\
    (holds (clc (neg v) C))))))))\n\
\n\
(declare asf\n\
  (! v var\n\
  (! f formula\n\
  (! C clause\n\
  (! r (atom v f)\n\
  (! u (! o (th_holds (not f))\n\
         (holds C))\n\
    (holds (clc (pos v) C))))))))\n\
\n\
;; Bitvector lemma constructors to assume\n\
;; the unit clause containing the assumptions\n\
;; it also requires the mapping between bv_v and v\n\
;; The resolution proof proving false will use bv_v as the definition clauses use bv_v\n\
;; but the Problem clauses in the main SAT solver will use v so the learned clause is in terms of v\n\
(declare bv_asf\n\
  (! v var\n\
  (! bv_v var\n\
  (! f formula\n\
  (! C clause\n\
  (! r (atom v f) ;; passed in\n\
  (! x (bvatom v bv_v) ; establishes the equivalence of v to bv_\n\
  (! u (! o (holds (clc (neg bv_v) cln)) ;; l binding to be used in proof\n\
         (holds C))\n\
    (holds (clc (pos v) C))))))))))\n\
\n\
(declare bv_ast\n\
  (! v var\n\
  (! bv_v var\n\
  (! f formula\n\
  (! C clause\n\
  (! r (atom v f)       ; this is specified\n\
  (! x (bvatom v bv_v) ; establishes the equivalence of v to bv_v\n\
  (! u (! o (holds (clc (pos bv_v) cln))\n\
         (holds C))\n\
    (holds (clc (neg v) C))))))))))\n\
\n\
\n\
;; Example:\n\
;;\n\
;; Given theory literals (F1....Fn), and an input formula A of the form (th_holds (or F1 (or F2 .... (or F{n-1} Fn))))).\n\
;;\n\
;; We introduce atoms (a1,...,an) to map boolean literals (v1,...,vn) top literals (F1,...,Fn).\n\
;; Do this at the beginning of the proof:\n\
;;\n\
;; (decl_atom F1 (\\ v1 (\\ a1\n\
;; (decl_atom F2 (\\ v2 (\\ a2\n\
;; ....\n\
;; (decl_atom Fn (\\ vn (\\ an\n\
;;\n\
;;  A is then clausified by the following proof:\n\
;;\n\
;;(satlem _ _\n\
;;(asf _ _ _ a1 (\\ l1\n\
;;(asf _ _ _ a2 (\\ l2\n\
;;...\n\
;;(asf _ _ _ an (\\ ln\n\
;;(clausify_false\n\
;;\n\
;;   (contra _\n\
;;      (or_elim_1 _ _ l{n-1}\n\
;;	...\n\
;;      (or_elim_1 _ _ l2\n\
;; 	(or_elim_1 _ _ l1 A))))) ln)\n\
;;\n\
;;))))))) (\\ C\n\
;;\n\
;; We now have the free variable C, which should be the clause (v1 V ... V vn).\n\
;;\n\
;; Polarity of literals should be considered, say we have A of the form (th_holds (or (not F1) (or F2 (not F3)))).\n\
;; Where necessary, we use \"ast\" instead of \"asf\", introduce negations by \"not_not_intro\" for pattern matching, and flip\n\
;; the arguments of contra:\n\
;;\n\
;;(satlem _ _\n\
;;(ast _ _ _ a1 (\\ l1\n\
;;(asf _ _ _ a2 (\\ l2\n\
;;(ast _ _ _ a3 (\\ l3\n\
;;(clausify_false\n\
;;\n\
;;   (contra _ l3\n\
;;      (or_elim_1 _ _ l2\n\
;; 	(or_elim_1 _ _ (not_not_intro l1) A))))\n\
;;\n\
;;))))))) (\\ C\n\
;;\n\
;; C should be the clause (~v1 V v2 V ~v3 )\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; Theory of Equality and Congruence Closure\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
; depends on : smt.plf\n\
\n\
; sorts :\n\
\n\
(declare arrow (! s1 sort (! s2 sort sort)))	; function constructor\n\
\n\
; functions :\n\
\n\
(declare apply (! s1 sort\n\
               (! s2 sort\n\
               (! t1 (term (arrow s1 s2))\n\
               (! t2 (term s1)\n\
                (term s2))))))\n\
\n\
\n\
; inference rules :\n\
\n\
(declare trust (th_holds false))	; temporary\n\
(declare trust_f (! f formula (th_holds f)))  ; temporary\n\
\n\
(declare refl\n\
  (! s sort\n\
  (! t (term s)\n\
    (th_holds (= s t t)))))\n\
\n\
(declare symm (! s sort\n\
              (! x (term s)\n\
              (! y (term s)\n\
              (! u (th_holds (= _ x y))\n\
                (th_holds (= _ y x)))))))\n\
\n\
(declare trans (! s sort\n\
               (! x (term s)\n\
               (! y (term s)\n\
               (! z (term s)\n\
               (! u (th_holds (= _ x y))\n\
               (! u (th_holds (= _ y z))\n\
                 (th_holds (= _ x z)))))))))\n\
\n\
(declare negsymm (! s sort\n\
              	 (! x (term s)\n\
              	 (! y (term s)\n\
              	 (! u (th_holds (not (= _ x y)))\n\
                   (th_holds (not (= _ y x))))))))\n\
\n\
(declare negtrans1 (! s sort\n\
                   (! x (term s)\n\
              	   (! y (term s)\n\
               	   (! z (term s)\n\
               	   (! u (th_holds (not (= _ x y)))\n\
               	   (! u (th_holds (= _ y z))\n\
                     (th_holds (not (= _ x z))))))))))\n\
\n\
(declare negtrans2 (! s sort\n\
                   (! x (term s)\n\
              	   (! y (term s)\n\
               	   (! z (term s)\n\
               	   (! u (th_holds (= _ x y))\n\
               	   (! u (th_holds (not (= _ y z)))\n\
                     (th_holds (not (= _ x z))))))))))\n\
\n\
(declare cong (! s1 sort\n\
              (! s2 sort\n\
              (! a1 (term (arrow s1 s2))\n\
              (! b1 (term (arrow s1 s2))\n\
              (! a2 (term s1)\n\
              (! b2 (term s1)\n\
              (! u1 (th_holds (= _ a1 b1))\n\
              (! u2 (th_holds (= _ a2 b2))\n\
                (th_holds (= _ (apply _ _ a1 a2) (apply _ _ b1 b2))))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
; Examples\n\
\n\
; an example of \"(p1 or p2(0)) and t1=t2(1)\"\n\
;(! p1 (term Bool)\n\
;(! p2 (term (arrow Int Bool))\n\
;(! t1 (term Int)\n\
;(! t2 (term (arrow Int Int))\n\
;(! F (th_holds (and (or (p_app p1) (p_app (apply _ _ p2 0)))\n\
;                    (= _ t1 (apply _ _ t2 1))))\n\
;  ...\n\
\n\
; another example of \"p3(a,b)\"\n\
;(! a (term Int)\n\
;(! b (term Int)\n\
;(! p3 (term (arrow Int (arrow Int Bool)))	; arrow is right assoc.\n\
;(! F (th_holds (p_app (apply _ _ (apply _ _ p3 a) b))) ; apply is left assoc.\n\
;  ...\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;\n\
; Theory of Arrays\n\
;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
; depends on : th_base.plf\n\
\n\
; sorts\n\
\n\
(declare Array (! s1 sort (! s2 sort sort)))	; s1 is index, s2 is element\n\
\n\
; functions\n\
(declare write (! s1 sort\n\
               (! s2 sort\n\
                 (term (arrow (Array s1 s2)\n\
                       (arrow s1\n\
                       (arrow s2 (Array s1 s2))))))))\n\
\n\
(declare read (! s1 sort\n\
              (! s2 sort\n\
              	(term (arrow (Array s1 s2)\n\
               	      (arrow s1 s2))))))\n\
\n\
; inference rules\n\
\n\
; read( a[i] = b, i ) == b\n\
(declare row1 (! s1 sort\n\
              (! s2 sort\n\
              (! t1 (term (Array s1 s2))\n\
              (! t2 (term s1)\n\
              (! t3 (term s2)\n\
              	(th_holds (= _\n\
		(apply _ _ (apply _ _ (read s1 s2) (apply _ _ (apply _ _ (apply _ _ (write s1 s2) t1) t2) t3)) t2) t3))))))))\n\
\n\
; read( a[i] = b, j ) == read( a, j ) if i != j\n\
(declare row (! s1 sort\n\
             (! s2 sort\n\
             (! t2 (term s1)\n\
             (! t3 (term s1)\n\
             (! t1 (term (Array s1 s2))\n\
             (! t4 (term s2)\n\
             (! u (th_holds (not (= _ t2 t3)))\n\
               (th_holds (= _ (apply _ _ (apply _ _ (read s1 s2) (apply _ _ (apply _ _ (apply _ _ (write s1 s2) t1) t2) t4)) t3)\n\
               		      (apply _ _ (apply _ _ (read s1 s2) t1) t3)))))))))))\n\
\n\
; i == j if read( a, j ) != read( a[i] = b, j )\n\
(declare negativerow (! s1 sort\n\
                     (! s2 sort\n\
                     (! t2 (term s1)\n\
                     (! t3 (term s1)\n\
                     (! t1 (term (Array s1 s2))\n\
                     (! t4 (term s2)\n\
		     (! u (th_holds (not (= _\n\
                        (apply _ _ (apply _ _ (read s1 s2) (apply _ _ (apply _ _ (apply _ _ (write s1 s2) t1) t2) t4)) t3)\n\
                        (apply _ _ (apply _ _ (read s1 s2) t1) t3))))\n\
                     (th_holds (= _ t2 t3))))))))))\n\
\n\
(declare ext (! s1 sort\n\
             (! s2 sort\n\
             (! t1 (term (Array s1 s2))\n\
             (! t2 (term (Array s1 s2))\n\
             (! u1 (! k (term s1)\n\
                   (! u2 (th_holds (or (= _ t1 t2) (not (= _ (apply _ _ (apply _ _ (read s1 s2) t1) k) (apply _ _ (apply _ _ (read s1 s2) t2) k)))))\n\
                     (holds cln)))\n\
               (holds cln)))))))\n\
;;;; TEMPORARY:\n\
\n\
(declare trust-bad (th_holds false))\n\
\n\
; helper stuff\n\
(program mpz_sub ((x mpz) (y mpz)) mpz\n\
	 (mp_add x (mp_mul (~1) y)))\n\
\n\
(program mp_ispos ((x mpz)) formula\n\
	 (mp_ifneg x false true))\n\
\n\
(program mpz_eq ((x mpz) (y mpz)) formula\n\
    (mp_ifzero (mpz_sub x y) true false))\n\
\n\
(program mpz_lt ((x mpz) (y mpz)) formula\n\
    (mp_ifneg (mpz_sub x y) true false))\n\
\n\
(program mpz_lte ((x mpz) (y mpz)) formula\n\
    (mp_ifneg (mpz_sub x y) true (mpz_eq x y)))\n\
\n\
(program mpz_ ((x mpz) (y mpz)) formula\n\
    (mp_ifzero (mpz_sub x y) true false))\n\
\n\
\n\
; \"bitvec\" is a term of type \"sort\"\n\
; (declare BitVec sort)\n\
(declare BitVec (!n mpz sort))\n\
\n\
; bit type\n\
(declare bit type)\n\
(declare b0 bit)\n\
(declare b1 bit)\n\
\n\
; bit vector type used for constants\n\
(declare bv type)\n\
(declare bvn bv)\n\
(declare bvc (! b bit (! v bv bv)))\n\
\n\
; calculate the length of a bitvector\n\
;; (program bv_len ((v bv)) mpz\n\
;;   (match v\n\
;;     (bvn 0)\n\
;;     ((bvc b v') (mp_add (bv_len v') 1))))\n\
\n\
\n\
; a bv constant term\n\
(declare a_bv\n\
	 (! n mpz\n\
	 (! v bv\n\
	    (term (BitVec n)))))\n\
\n\
(program bv_constants_are_disequal ((x bv) (y bv)) formula\n\
  (match x\n\
      (bvn (fail formula))\n\
      ((bvc bx x')\n\
        (match y\n\
          (bvn (fail formula))\n\
          ((bvc by y') (match bx\n\
                             (b0 (match by (b0 (bv_constants_are_disequal x' y')) (b1 (true))))\n\
                             (b1 (match by (b0 (true)) (b1 (bv_constants_are_disequal x' y'))))\n\
          ))\n\
      ))\n\
))\n\
\n\
(declare bv_disequal_constants\n\
	 (! n mpz\n\
	 (! x bv\n\
	 (! y bv\n\
	 (! c (^ (bv_constants_are_disequal x y) true)\n\
  	   (th_holds (not (= (BitVec n) (a_bv n x) (a_bv n y)))))))))\n\
\n\
; a bv variable\n\
(declare var_bv type)\n\
; a bv variable term\n\
(declare a_var_bv\n\
	 (! n mpz\n\
	 (! v var_bv\n\
	    (term (BitVec n)))))\n\
\n\
; bit vector binary operators\n\
(define bvop2\n\
	(! n mpz\n\
	(! x (term (BitVec n))\n\
        (! y (term (BitVec n))\n\
             	   (term (BitVec n))))))\n\
\n\
(declare bvand bvop2)\n\
(declare bvor bvop2)\n\
(declare bvor bvop2)\n\
(declare bvxor bvop2)\n\
(declare bvnand bvop2)\n\
(declare bvnor bvop2)\n\
(declare bvxnor bvop2)\n\
(declare bvmul bvop2)\n\
(declare bvadd bvop2)\n\
(declare bvsub bvop2)\n\
(declare bvudiv bvop2)\n\
(declare bvurem bvop2)\n\
(declare bvsdiv bvop2)\n\
(declare bvsrem bvop2)\n\
(declare bvsmod bvop2)\n\
(declare bvshl bvop2)\n\
(declare bvlshr bvop2)\n\
(declare bvashr bvop2)\n\
(declare concat bvop2)\n\
\n\
; bit vector unary operators\n\
(define bvop1\n\
	(! n mpz\n\
	(! x (term (BitVec n))\n\
             	   (term (BitVec n)))))\n\
\n\
\n\
(declare bvneg bvop1)\n\
(declare bvnot bvop1)\n\
(declare rotate_left  bvop1)\n\
(declare rotate_right bvop1)\n\
\n\
(declare bvcomp\n\
	 (! n mpz\n\
 	 (! t1 (term (BitVec n))\n\
	 (! t2 (term (BitVec n))\n\
	    (term (BitVec 1))))))\n\
\n\
\n\
(declare concat\n\
	 (! n mpz\n\
	 (! m mpz\n\
	 (! m' mpz\n\
	 (! t1 (term (BitVec m))\n\
	 (! t2 (term (BitVec m'))\n\
	    (term (BitVec n))))))))\n\
\n\
;; side-condition fails in signature only??\n\
;;	 (! s (^ (mp_add m m') n)\n\
\n\
;; (declare repeat bvopp)\n\
\n\
(declare extract\n\
	 (! n mpz\n\
	 (! i mpz\n\
	 (! j mpz\n\
	 (! m mpz\n\
	 (! t2 (term (BitVec m))\n\
	    (term (BitVec n))))))))\n\
\n\
(declare zero_extend\n\
	 (! n mpz\n\
	 (! i mpz\n\
	 (! m mpz\n\
	 (! t2 (term (BitVec m))\n\
	    (term (BitVec n)))))))\n\
\n\
(declare sign_extend\n\
	 (! n mpz\n\
	 (! i mpz\n\
	 (! m mpz\n\
	 (! t2 (term (BitVec m))\n\
	    (term (BitVec n)))))))\n\
\n\
(declare repeat\n\
	 (! n mpz\n\
	 (! i mpz\n\
	 (! m mpz\n\
	 (! t2 (term (BitVec m))\n\
	    (term (BitVec n)))))))\n\
\n\
\n\
\n\
;; TODO: add checks for valid typing for these operators\n\
;; (! c1 (^ (mpz_lte i j)\n\
;; (! c2 (^ (mpz_lt i n) true)\n\
;; (! c3 (^ (mp_ifneg i false true) true)\n\
;; (! c4 (^ (mp_ifneg j false true) true)\n\
;; (! s (^ (mp_add (mpz_sub i j) 1) m)\n\
\n\
\n\
; bit vector predicates\n\
(define bvpred\n\
	(! n mpz\n\
	(! x (term (BitVec n))\n\
	(! y (term (BitVec n))\n\
	           formula))))\n\
\n\
(declare bvult bvpred)\n\
(declare bvule bvpred)\n\
(declare bvugt bvpred)\n\
(declare bvuge bvpred)\n\
(declare bvslt bvpred)\n\
(declare bvsle bvpred)\n\
(declare bvsgt bvpred)\n\
(declare bvsge bvpred)\n\
; bit blasted terms as list of formulas\n\
(declare bblt type)\n\
(declare bbltn bblt)\n\
(declare bbltc (! f formula (! v bblt bblt)))\n\
\n\
; calculate the length of a bit-blasted term\n\
(program bblt_len ((v bblt)) mpz\n\
  (match v\n\
    (bbltn 0)\n\
    ((bbltc b v') (mp_add (bblt_len v') 1))))\n\
\n\
\n\
; (bblast_term x y) means term y corresponds to bit level interpretation x\n\
(declare bblast_term\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
	 (! y bblt\n\
	    type))))\n\
\n\
; FIXME: for unsupported bit-blast terms\n\
(declare trust_bblast_term\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
	 (! y bblt\n\
	    (bblast_term n x y)))))\n\
\n\
\n\
; Binds a symbol to the bblast_term to be used later on.\n\
(declare decl_bblast\n\
	 (! n mpz\n\
	 (! b bblt\n\
	 (! t (term (BitVec n))\n\
	 (! bb (bblast_term n t b)\n\
	 (! s (^ (bblt_len b) n)\n\
	 (! u (! v (bblast_term n t b) (holds cln))\n\
		   (holds cln))))))))\n\
\n\
(declare decl_bblast_with_alias\n\
	 (! n mpz\n\
	 (! b bblt\n\
	 (! t (term (BitVec n))\n\
	 (! a (term (BitVec n))\n\
	 (! bb (bblast_term n t b)\n\
	 (! e (th_holds (= _ t a))\n\
	 (! s (^ (bblt_len b) n)\n\
	 (! u (! v (bblast_term n a b) (holds cln))\n\
		   (holds cln))))))))))\n\
\n\
; a predicate to represent the n^th bit of a bitvector term\n\
(declare bitof\n\
	 (! x var_bv\n\
	 (! n mpz formula)))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;;\n\
;;           BITBLASTING RULES\n\
;;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST CONSTANT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_const ((v bv) (n mpz)) bblt\n\
  (mp_ifneg n (match v (bvn bbltn)\n\
                       (default (fail bblt)))\n\
              (match v ((bvc b v') (bbltc (match b (b0 false) (b1 true)) (bblast_const v' (mp_add n (~ 1)))))\n\
                       (default (fail bblt)))))\n\
\n\
(declare bv_bbl_const (! n mpz\n\
                      (! f bblt\n\
                      (! v bv\n\
                      (! c (^ (bblast_const v (mp_add n (~ 1))) f)\n\
                           (bblast_term n (a_bv n v) f))))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST VARIABLE\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_var ((x var_bv) (n mpz)) bblt\n\
  (mp_ifneg n bbltn\n\
              (bbltc (bitof x n) (bblast_var x (mp_add n (~ 1))))))\n\
\n\
(declare bv_bbl_var (! n mpz\n\
                    (! x var_bv\n\
                    (! f bblt\n\
                    (! c (^ (bblast_var x (mp_add n (~ 1))) f)\n\
                         (bblast_term n (a_var_bv n x) f))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST CONCAT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_concat ((x bblt) (y bblt)) bblt\n\
  (match x\n\
    (bbltn (match y ((bbltc by y') (bbltc by (bblast_concat x y')))\n\
    	   	    (bbltn bbltn)))\n\
    ((bbltc bx x') (bbltc bx (bblast_concat x' y)))))\n\
\n\
(declare bv_bbl_concat (! n mpz\n\
	 	       (! m mpz\n\
		       (! m1 mpz\n\
                       (! x (term (BitVec m))\n\
		       (! y (term (BitVec m1))\n\
		       (! xb bblt\n\
		       (! yb bblt\n\
		       (! rb bblt\n\
		       (! xbb (bblast_term m x xb)\n\
		       (! ybb (bblast_term m1 y yb)\n\
                       (! c (^ (bblast_concat xb yb ) rb)\n\
                           (bblast_term n (concat n m m1 x y) rb)))))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST EXTRACT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_extract_rec ((x bblt) (i mpz) (j mpz) (n mpz)) bblt\n\
  (match x\n\
    ((bbltc bx x') (mp_ifneg (mpz_sub (mpz_sub j n) 1)\n\
    	       	   	     (mp_ifneg (mpz_sub (mpz_sub n i) 1)\n\
			    	  	  (bbltc bx (bblast_extract_rec x' i j (mpz_sub n 1)))\n\
					  (bblast_extract_rec x' i j (mpz_sub n 1)))\n\
\n\
			     bbltn))\n\
   (bbltn bbltn)))\n\
\n\
(program bblast_extract ((x bblt) (i mpz) (j mpz) (n mpz)) bblt\n\
 (bblast_extract_rec x i j (mpz_sub n 1)))\n\
\n\
(declare bv_bbl_extract (! n mpz\n\
			(! i mpz\n\
			(! j mpz\n\
			(! m mpz\n\
                       	(! x (term (BitVec m))\n\
		       	(! xb bblt\n\
		       	(! rb bblt\n\
		       	(! xbb (bblast_term m x xb)\n\
			(! c ( ^ (bblast_extract xb i j m) rb)\n\
                           (bblast_term n (extract n i j m x) rb)))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST ZERO/SIGN EXTEND\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program extend_rec ((x bblt) (i mpz) (b formula)) bblt\n\
  (mp_ifneg i x\n\
  	    (bbltc b (extend_rec x (mpz_sub i 1) b)))))\n\
\n\
(program bblast_zextend ((x bblt) (i mpz)) bblt\n\
 (extend_rec x (mpz_sub i 1) false))\n\
\n\
(declare bv_bbl_zero_extend (! n mpz\n\
			(! k mpz\n\
			(! m mpz\n\
                       	(! x (term (BitVec m))\n\
		       	(! xb bblt\n\
		       	(! rb bblt\n\
		       	(! xbb (bblast_term m x xb)\n\
			(! c ( ^ (bblast_zextend xb k m) rb)\n\
                           (bblast_term n (zero_extend n k m x) rb))))))))))\n\
\n\
(program bblast_sextend ((x bblt) (i mpz)) bblt\n\
 (match x (bbltn (fail bblt))\n\
 	  ((bbltc xb x') (extend_rec x (mpz_sub i 1) xb))))\n\
\n\
(declare bv_bbl_sign_extend (! n mpz\n\
			(! k mpz\n\
			(! m mpz\n\
                       	(! x (term (BitVec m))\n\
		       	(! xb bblt\n\
		       	(! rb bblt\n\
		       	(! xbb (bblast_term m x xb)\n\
			(! c ( ^ (bblast_sextend xb k) rb)\n\
                           (bblast_term n (sign_extend n k m x) rb))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVAND\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvand ((x bblt) (y bblt)) bblt\n\
  (match x\n\
    (bbltn (match y (bbltn bbltn) (default (fail bblt))))\n\
    ((bbltc bx x') (match y\n\
                      (bbltn (fail bblt))\n\
                      ((bbltc by y') (bbltc (and bx by) (bblast_bvand x' y')))))))\n\
\n\
(declare bv_bbl_bvand (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! y (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! yb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
		      (! ybb (bblast_term n y yb)\n\
                      (! c (^ (bblast_bvand xb yb ) rb)\n\
                           (bblast_term n (bvand n x y) rb)))))))))))\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVNOT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvnot ((x bblt)) bblt\n\
  (match x\n\
    (bbltn bbltn)\n\
    ((bbltc bx x') (bbltc (not bx) (bblast_bvnot x')))))\n\
\n\
(declare bv_bbl_bvnot (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
                      (! c (^ (bblast_bvnot xb ) rb)\n\
                           (bblast_term n (bvnot n x) rb))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVOR\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvor ((x bblt) (y bblt)) bblt\n\
  (match x\n\
    (bbltn (match y (bbltn bbltn) (default (fail bblt))))\n\
    ((bbltc bx x') (match y\n\
                      (bbltn (fail bblt))\n\
                      ((bbltc by y') (bbltc (or bx by) (bblast_bvor x' y')))))))\n\
\n\
(declare bv_bbl_bvor (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! y (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! yb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
		      (! ybb (bblast_term n y yb)\n\
                      (! c (^ (bblast_bvor xb yb ) rb)\n\
                           (bblast_term n (bvor n x y) rb)))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVXOR\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvxor ((x bblt) (y bblt)) bblt\n\
  (match x\n\
    (bbltn (match y (bbltn bbltn) (default (fail bblt))))\n\
    ((bbltc bx x') (match y\n\
                      (bbltn (fail bblt))\n\
                      ((bbltc by y') (bbltc (xor bx by) (bblast_bvxor x' y')))))))\n\
\n\
(declare bv_bbl_bvxor (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! y (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! yb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
		      (! ybb (bblast_term n y yb)\n\
                      (! c (^ (bblast_bvxor xb yb ) rb)\n\
                           (bblast_term n (bvxor n x y) rb)))))))))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVADD\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
;; return the carry bit after adding x y\n\
;; FIXME: not the most efficient thing in the world\n\
(program bblast_bvadd_carry ((a bblt) (b bblt) (carry formula)) formula\n\
(match a\n\
  ( bbltn (match b (bbltn carry) (default (fail formula))))\n\
  ((bbltc ai a') (match b\n\
  	     	   (bbltn (fail formula))\n\
	 	   ((bbltc bi b') (or (and ai bi) (and (xor ai bi) (bblast_bvadd_carry a' b' carry))))))))\n\
\n\
;; ripple carry adder where carry is the initial carry bit\n\
(program bblast_bvadd ((a bblt) (b bblt) (carry formula)) bblt\n\
(match a\n\
  ( bbltn (match b (bbltn bbltn) (default (fail bblt))))\n\
  ((bbltc ai a') (match b\n\
  	     	   (bbltn (fail bblt))\n\
	 	   ((bbltc bi b') (bbltc (xor (xor ai bi) (bblast_bvadd_carry a' b' carry))\n\
				  	 (bblast_bvadd a' b' carry)))))))\n\
\n\
\n\
(program reverse_help ((x bblt) (acc bblt)) bblt\n\
(match x\n\
       (bbltn acc)\n\
       ((bbltc xi x') (reverse_help x' (bbltc xi acc)))))\n\
\n\
\n\
(program reverseb ((x bblt)) bblt\n\
	 (reverse_help x bbltn))\n\
\n\
\n\
; AJR: use this version?\n\
;(program bblast_bvadd_2h ((a bblt) (b bblt) (carry formula)) bblt\n\
;(match a\n\
;  ( bbltn (match b (bbltn bbltn) (default (fail bblt))))\n\
;  ((bbltc ai a') (match b\n\
;       (bbltn (fail bblt))\n\
;	 	   ((bbltc bi b')\n\
;	 	     (let carry' (or (and ai bi) (and (xor ai bi) carry))\n\
;	 	     (bbltc (xor (xor ai bi) carry)\n\
;				  	    (bblast_bvadd_2h a' b' carry'))))))))\n\
\n\
;(program bblast_bvadd_2 ((a bblt) (b bblt) (carry formula)) bblt\n\
;(let ar (reverseb a) ;; reverse a and b so that we can build the circuit\n\
;(let br (reverseb b) ;; from the least significant bit up\n\
;(let ret (bblast_bvadd_2h ar br carry)\n\
;  (reverseb ret)))))\n\
\n\
(declare bv_bbl_bvadd (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! y (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! yb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
		      (! ybb (bblast_term n y yb)\n\
                      (! c (^ (bblast_bvadd xb yb false) rb)\n\
                           (bblast_term n (bvadd n x y) rb)))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVNEG\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_zero ((n mpz)) bblt\n\
(mp_ifzero n bbltn\n\
	     (bbltc false (bblast_zero (mp_add n (~1))))))\n\
\n\
(program bblast_bvneg ((x bblt) (n mpz)) bblt\n\
  (bblast_bvadd (bblast_bvnot x) (bblast_zero n) true))\n\
\n\
\n\
(declare bv_bbl_bvneg (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
                      (! c (^ (bblast_bvneg xb n) rb)\n\
                           (bblast_term n (bvneg n x) rb))))))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVMUL\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
\n\
;; shift add multiplier\n\
\n\
;; (program concat ((a bblt) (b bblt)) bblt\n\
;;   (match a (bbltn b)\n\
;;   	   ((bbltc ai a') (bbltc ai (concat a' b)))))\n\
\n\
\n\
(program top_k_bits ((a bblt) (k mpz)) bblt\n\
  (mp_ifzero k bbltn\n\
  	     (match a (bbltn (fail bblt))\n\
	     	      ((bbltc ai a') (bbltc ai (top_k_bits a' (mpz_sub k 1)))))))\n\
\n\
(program bottom_k_bits ((a bblt) (k mpz)) bblt\n\
 (reverseb (top_k_bits (reverseb a) k)))\n\
\n\
;; assumes the least signigicant bit is at the beginning of the list\n\
(program k_bit ((a bblt) (k mpz)) formula\n\
(mp_ifneg k (fail formula)\n\
(match a (bbltn (fail formula))\n\
         ((bbltc ai a') (mp_ifzero k ai (k_bit a' (mpz_sub k 1)))))))\n\
\n\
(program and_with_bit ((a bblt) (bt formula)) bblt\n\
(match a (bbltn bbltn)\n\
         ((bbltc ai a') (bbltc (and bt ai) (and_with_bit a' bt)))))\n\
\n\
;; a is going to be the current result\n\
;; carry is going to be false initially\n\
;; b is the and of a and b[k]\n\
;; res is going to be bbltn initially\n\
(program mult_step_k_h ((a bblt) (b bblt) (res bblt) (carry formula) (k mpz)) bblt\n\
(match a\n\
  (bbltn (match b (bbltn res) (default (fail bblt))))\n\
  ((bbltc ai a')\n\
    (match b (bbltn (fail bblt))\n\
             ((bbltc bi b')\n\
	     (mp_ifneg (mpz_sub k 1)\n\
	     	         (let carry_out (or (and ai bi) (and (xor ai bi) carry))\n\
			 (let curr (xor (xor ai bi) carry)\n\
			    (mult_step_k_h a' b' (bbltc curr res) carry_out (mpz_sub k 1))))\n\
			 (mult_step_k_h a' b (bbltc ai res) carry (mpz_sub k 1))\n\
))))))\n\
\n\
;; assumes that a, b and res have already been reversed\n\
(program mult_step ((a bblt) (b bblt) (res bblt) (n mpz) (k mpz)) bblt\n\
(let k' (mpz_sub n k )\n\
(let ak (top_k_bits a k')\n\
(let b' (and_with_bit ak (k_bit b k))\n\
 (mp_ifzero (mpz_sub k' 1)\n\
   (mult_step_k_h res b' bbltn false k)\n\
   (let res' (mult_step_k_h res b' bbltn false k)\n\
   (mult_step a b (reverseb res') n (mp_add k 1))))))))\n\
\n\
\n\
(program bblast_bvmul ((a bblt) (b bblt) (n mpz)) bblt\n\
(let ar (reverseb a) ;; reverse a and b so that we can build the circuit\n\
(let br (reverseb b) ;; from the least significant bit up\n\
(let res (and_with_bit ar (k_bit br 0))\n\
     (mp_ifzero (mpz_sub n 1)     ;; if multiplying 1 bit numbers no need to call mult_step\n\
     		res\n\
		(mult_step ar br res n 1))))))\n\
\n\
(declare bv_bbl_bvmul (! n mpz\n\
                      (! x (term (BitVec n))\n\
		      (! y (term (BitVec n))\n\
		      (! xb bblt\n\
		      (! yb bblt\n\
		      (! rb bblt\n\
		      (! xbb (bblast_term n x xb)\n\
		      (! ybb (bblast_term n y yb)\n\
                      (! c (^ (bblast_bvmul xb yb n) rb)\n\
                           (bblast_term n (bvmul n x y) rb)))))))))))\n\
\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST EQUALS\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
; bit blast  x = y\n\
; for x,y of size n, it will return a conjunction (x.0 = y.0 ^ ( ... ^ (x.{n-1} = y.{n-1})))\n\
; f is the accumulator formula that builds the equality in the right order\n\
(program bblast_eq_rec ((x bblt) (y bblt) (f formula)) formula\n\
  (match x\n\
    (bbltn (match y (bbltn f) (default (fail formula))))\n\
    ((bbltc fx x') (match y\n\
                      (bbltn (fail formula))\n\
                      ((bbltc fy y') (bblast_eq_rec x' y' (and (iff fx fy) f)))))\n\
    (default (fail formula))))\n\
\n\
(program bblast_eq ((x bblt) (y bblt)) formula\n\
	 (match x\n\
	 	((bbltc bx x') (match y ((bbltc by y') (bblast_eq_rec x' y' (iff bx by)))\n\
			       	      	(default (fail formula))))\n\
		(default (fail formula))))\n\
\n\
\n\
;; TODO: a temporary bypass for rewrites that we don't support yet. As soon\n\
;; as we do, remove this rule.\n\
\n\
(declare bv_bbl_=_false\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
         (! y (term (BitVec n))\n\
         (! bx bblt\n\
         (! by bblt\n\
         (! f formula\n\
         (! bbx (bblast_term n x bx)\n\
         (! bby (bblast_term n y by)\n\
         (! c (^ (bblast_eq bx by) f)\n\
            (th_holds (iff (= (BitVec n) x y) false))))))))))))\n\
\n\
(declare bv_bbl_=\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
         (! y (term (BitVec n))\n\
         (! bx bblt\n\
         (! by bblt\n\
         (! f formula\n\
         (! bbx (bblast_term n x bx)\n\
         (! bby (bblast_term n y by)\n\
         (! c (^ (bblast_eq bx by) f)\n\
            (th_holds (iff (= (BitVec n) x y) f))))))))))))\n\
\n\
(declare bv_bbl_=_swap\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
         (! y (term (BitVec n))\n\
         (! bx bblt\n\
         (! by bblt\n\
         (! f formula\n\
         (! bbx (bblast_term n x bx)\n\
         (! bby (bblast_term n y by)\n\
         (! c (^ (bblast_eq by bx) f)\n\
            (th_holds (iff (= (BitVec n) x y) f))))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVULT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvult ((x bblt) (y bblt) (n mpz)) formula\n\
(match x\n\
  ( bbltn (fail formula))\n\
  ((bbltc xi x') (match y\n\
  	     	   (bbltn (fail formula))\n\
	 	   ((bbltc yi y') (mp_ifzero n\n\
		                    (and (not xi) yi)\n\
				    (or (and (iff xi yi) (bblast_bvult x' y' (mp_add n (~1)))) (and (not xi) yi))))))))\n\
\n\
(declare bv_bbl_bvult\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
         (! y (term (BitVec n))\n\
         (! bx bblt\n\
         (! by bblt\n\
         (! f formula\n\
         (! bbx (bblast_term n x bx)\n\
         (! bby (bblast_term n y by)\n\
         (! c (^ (bblast_bvult bx by (mp_add n (~1))) f)\n\
            (th_holds (iff (bvult n x y) f))))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVSLT\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvslt ((x bblt) (y bblt) (n mpz)) formula\n\
(match x\n\
  ( bbltn (fail formula))\n\
  ((bbltc xi x') (match y\n\
  	     	   (bbltn (fail formula))\n\
	 	   ((bbltc yi y') (mp_ifzero (mpz_sub n 1)\n\
		   	      	  	     (and xi (not yi))\n\
		   	      		     (or (and (iff xi yi)\n\
					     	      (bblast_bvult x' y' (mpz_sub n 2)))\n\
					     	 (and xi (not yi)))))))))\n\
\n\
(declare bv_bbl_bvslt\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
         (! y (term (BitVec n))\n\
         (! bx bblt\n\
         (! by bblt\n\
         (! f formula\n\
         (! bbx (bblast_term n x bx)\n\
         (! bby (bblast_term n y by)\n\
         (! c (^ (bblast_bvslt bx by n) f)\n\
            (th_holds (iff (bvslt n x y) f))))))))))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;; BITBLAST BVCOMP\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
(program bblast_bvcomp ((x bblt) (y bblt) (n mpz)) bblt\n\
  (match x ((bbltc bx x') (match y ((bbltc by y')\n\
  	   	                      (bbltc (bblast_eq_rec x' y' (iff bx by)) bbltn))\n\
                                   (default (fail bblt))))\n\
           (default (fail bblt))\n\
	   ))\n\
\n\
(declare bv_bbl_bvcomp (! n mpz\n\
                       (! x (term (BitVec n))\n\
		       (! y (term (BitVec n))\n\
		       (! xb bblt\n\
		       (! yb bblt\n\
		       (! rb bblt\n\
		       (! xbb (bblast_term n x xb)\n\
		       (! ybb (bblast_term n y yb)\n\
                       (! c (^ (bblast_bvcomp xb yb n) rb)\n\
                              (bblast_term 1 (bvcomp n x y) rb)))))))))))\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;;\n\
;;           BITBLASTING CONNECTORS\n\
;;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
\n\
; bit-blasting connections\n\
\n\
(declare intro_assump_t\n\
	 (! f formula\n\
	 (! v var\n\
	 (! C clause\n\
	 (! h (th_holds f)\n\
	 (! a (atom v f)\n\
	 (! u (! unit (holds (clc (pos v) cln))\n\
	      	 (holds C))\n\
	 (holds C))))))))\n\
\n\
(declare intro_assump_f\n\
	 (! f formula\n\
	 (! v var\n\
	 (! C clause\n\
	 (! h (th_holds (not f))\n\
	 (! a (atom v f)\n\
	 (! u (! unit (holds (clc (neg v) cln))\n\
	      	 (holds C))\n\
	 (holds C))))))))\n\
\n\
\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
;;\n\
;;           REWRITE RULES\n\
;;\n\
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n\
\n\
\n\
; rewrite rule :\n\
; x + y = y + x\n\
(declare bvadd_symm\n\
	 (! n mpz\n\
	 (! x (term (BitVec n))\n\
	 (! y (term (BitVec n))\n\
	    (th_holds (= (BitVec n) (bvadd _ x y) (bvadd _ y x)))))))\n\
\n\
;; (declare bvcrazy_rewrite\n\
;; 	 (! n mpz\n\
;; 	 (! x (term (BitVec n))\n\
;; 	 (! y (term (BitVec n))\n\
;; 	 (! xn bv_poly\n\
;; 	 (! yn bv_poly\n\
;; 	 (! hxn (bv_normalizes x xn)\n\
;; 	 (! hyn (bv_normalizes y yn)\n\
;; 	 (! s (^ (rewrite_scc xn yn) true)\n\
;; 	 (! u (! x (term (BitVec n)) (holds cln))\n\
;; 	     (holds cln)))))))))))\n\
\n\
;; 	    (th_holds (= (BitVec n) (bvadd x y) (bvadd y x)))))))\n\
\n\
\n\
\n\
; necessary?\n\
;; (program calc_bvand ((a bv) (b bv)) bv\n\
;;   (match a\n\
;;     (bvn (match b (bvn bvn) (default (fail bv))))\n\
;;     ((bvc ba a') (match b\n\
;;                       ((bvc bb b') (bvc (match ba (b0 b0) (b1 bb)) (calc_bvand a' b')))\n\
;;                       (default (fail bv))))))\n\
\n\
;; ; rewrite rule (w constants) :\n\
;; ; a & b = c\n\
;; (declare bvand_const (! c bv\n\
;; 		     (! a bv\n\
;;                      (! b bv\n\
;;                      (! u (^ (calc_bvand a b) c)\n\
;;                         (th_holds (= BitVec (bvand (a_bv a) (a_bv b)) (a_bv c))))))))\n\
\n\
\n\
;; making constant bit-vectors\n\
(program mk_ones ((n mpz)) bv\n\
	(mp_ifzero n bvn (bvc b1 (mk_ones (mpz_sub n 1)))))\n\
\n\
(program mk_zero ((n mpz)) bv\n\
	(mp_ifzero n bvn (bvc b0 (mk_ones (mpz_sub n 1)))))\n\
\n\
\n\
\n\
;; (bvxnor a b) => (bvnot (bvxor a b))\n\
;; (declare bvxnor_elim\n\
;; 	 (! n mpz\n\
;; 	 (! a (term (BitVec n))\n\
;; 	 (! b (term (BitVec n))\n\
;; 	 (! a' (term (BitVec n))\n\
;; 	 (! b' (term (BitVec n))\n\
;; 	 (! rwa (rw_term _ a a')\n\
;; 	 (! rwb (rw_term _ b b')\n\
;; 	 (rw_term n (bvxnor _ a b)\n\
;; 	 	  (bvnot _ (bvxor _ a' b')))))))))))\n\
\n\
\n\
\n\
;; ;; (bvxor a 0) => a\n\
;; (declare bvxor_zero\n\
;; 	 (! n mpz\n\
;; 	 (! zero_bits bv\n\
;; 	 (! sc (^ (mk_zero n)  zero_bits)\n\
;; 	 (! a (term (BitVec n))\n\
;; 	 (! b (term (BitVec n))\n\
;; 	 (! a' (term (BitVec n))\n\
;; 	 (! rwa (rw_term _  a a')\n\
;; 	 (! rwb (rw_term _ b (a_bv _ zero_bits))\n\
;; 	 (rw_term _  (bvxor _ a b)\n\
;; 	 	  a'))))))))))\n\
\n\
;; ;; (bvxor a 11) => (bvnot a)\n\
;; (declare bvxor_one\n\
;; 	 (! n mpz\n\
;; 	 (! one_bits bv\n\
;; 	 (! sc (^ (mk_ones n)  one_bits)\n\
;; 	 (! a (term (BitVec n))\n\
;; 	 (! b (term (BitVec n))\n\
;; 	 (! a' (term (BitVec n))\n\
;; 	 (! rwa (rw_term _  a a')\n\
;; 	 (! rwb (rw_term _  b (a_bv _ one_bits))\n\
;; 	 (rw_term _ (bvxor _ a b)\n\
;; 	 	  (bvnot _ a')))))))))))\n\
\n\
\n\
;; ;; (bvnot (bvnot a)) => a\n\
;; (declare bvnot_idemp\n\
;; 	 (! n mpz\n\
;; 	 (! a (term (BitVec n))\n\
;; 	 (! a' (term (BitVec n))\n\
;; 	 (! rwa (rw_term _  a a')\n\
;; 	 (rw_term _ (bvnot _ (bvnot _ a))\n\
;; 	 	  a'))))))\n\
;\n\
; Equality swap\n\
;\n\
\n\
(declare rr_bv_eq\n\
	 (! n mpz\n\
	 (! t1 (term (BitVec n))\n\
 	 (! t2 (term (BitVec n))\n\
	     (th_holds (iff (= (BitVec n) t2 t1) (= (BitVec n) t1 t2)))))))\n\
\n\
;\n\
; Additional rules...\n\
;\n\
\n\
;\n\
; Default, if nothing else applied\n\
;\n\
\n\
(declare rr_bv_default\n\
	 (! t1 formula\n\
 	 (! t2 formula\n\
	     (th_holds (iff t1 t2))))))\n\
(declare Real sort)\n\
\n\
(define arithpred_Real (! x (term Real)\n\
                       (! y (term Real)\n\
                         formula)))\n\
\n\
(declare >_Real arithpred_Real)\n\
(declare >=_Real arithpred_Real)\n\
(declare <_Real  arithpred_Real)\n\
(declare <=_Real arithpred_Real)\n\
\n\
(define arithterm_Real (! x (term Real)\n\
                       (! y (term Real)\n\
                         (term Real))))\n\
\n\
(declare +_Real arithterm_Real)\n\
(declare -_Real arithterm_Real)\n\
(declare *_Real arithterm_Real)  ; is * ok to use?\n\
(declare /_Real arithterm_Real)  ; is / ok to use?\n\
\n\
; a constant term\n\
(declare a_real (! x mpq (term Real)))\n\
\n\
; unary negation\n\
(declare u-_Real (! t (term Real) (term Real)))\n\
(declare Int sort)\n\
\n\
(define arithpred_Int (! x (term Int)\n\
                      (! y (term Int)\n\
                        formula)))\n\
\n\
(declare >_Int arithpred_Int)\n\
(declare >=_Int arithpred_Int)\n\
(declare <_Int  arithpred_Int)\n\
(declare <=_Int arithpred_Int)\n\
\n\
(define arithterm_Int (! x (term Int)\n\
		      (! y (term Int)\n\
		        (term Int))))\n\
\n\
(declare +_Int arithterm_Int)\n\
(declare -_Int arithterm_Int)\n\
(declare *_Int arithterm_Int)  ; is * ok to use?\n\
(declare /_Int arithterm_Int)  ; is / ok to use?\n\
\n\
; a constant term\n\
(declare a_int (! x mpz (term Int)))\n\
\n\
; unary negation\n\
(declare u-_Int (! t (term Int) (term Int)))\n\
";

} /* CVC4::proof namespace */
} /* CVC4 namespace */
