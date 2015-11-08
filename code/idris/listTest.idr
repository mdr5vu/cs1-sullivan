module listTest

import list
import bool
import nat
import eq
import Person
import People
import Serialize

lO: list Nat
lO = nil

l1: list Nat
l1 = 1 :: nil

l2: list Nat
l2 = 1 :: 2 :: nil

l3: list Nat
l3 = 1 :: 2 :: 3 :: nil

li: list bool
li = true :: false :: true :: true :: nil

A1: list Nat
A1 = lO ++ l1
--expect cons 1 nil

A2: list Nat
A2 = lO ++ l2
--expect (cons 1 (cons 2 nil))

A3: list Nat
A3 = lO ++ l3
--expect (cons 1 (cons 2 (cons 3 nil)))

A4: list Nat
A4 = l1 ++ l1
--expect cons 1 (cons 1 nil)

A5: list Nat
A5 = l1 ++ l2
--expect cons 1 (cons 1 (cons 2 nil))

A6: list Nat
A6 = l1 ++ l3
--expect cons 1 (cons 1 (cons 2 (cons 3 nil)))

A7: list Nat
A7 = l2 ++ l1
--expect cons 1 (cons 2 (cons 1 nil))

A8: list Nat
A8 = l2 ++ l2
--expect cons 1 (cons 2 (cons 1 (cons 2 nil)))

A9: list Nat
A9 = l2 ++ l3
--expect cons 1 (cons 2 (cons 1 (cons 2 (cons 3 nil)))

A10: list Nat
A10 = l3 ++ l1
--expect cons 1 (cons 2 (cons 3 (cons 1 nil)))

A11: list Nat
A11 = l3 ++ l2
--expect cons 1 (cons 2 (cons 3 (cons 1 (cons 2 nil))))

A12: list Nat
A12 = l3 ++ l3
--expect cons 1 (cons 2 (cons 3 (cons 1 (cons 2 (cons 3 nil)))))

L0: Nat
L0 = length lO

L1: Nat
L1 = length l1

L2: Nat
L2 = length l2

L3: Nat
L3 = length l3

M1: list bool
M1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

F1: list nat
F1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

l2n: list nat
l2n = (S (S O))::(S O)::nil

isThree: bool
isThree = (member (S (S (S O))) l2n)

s: String
s = toString l2n


