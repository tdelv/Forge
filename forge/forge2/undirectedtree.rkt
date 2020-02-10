#lang racket

(require "../sigs.rkt")

(pre-declare-sig Node)
(declare-sig Node ((edges set Node)))

(define (forge2_undirectedTree)
  (and
   (= edges (~ edges))
   (and
    (in (-> Node Node) (* edges))
    (and
     (no (& iden edges))
     (all ([n Node])
          (all ([m Node])
               (implies
                (in edges (+ (-> m n) (-> n m)))
                (not (in (+ (-> m n) (-> n m)) (^ (- edges (+ (-> m n) (-> n m)))))))))))))