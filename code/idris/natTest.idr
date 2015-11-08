module natTest

import bool
import pair
import nat
import Serialize

-- zero
z: nat
z = O
-- one
o: nat
o = S O
-- two
t: nat
t = S (S O)
-- three
r: nat
r = S t
--four
f: nat
f = S r
-- five
v: nat
v = S f

{--will no longer compile as pair functions were deleted from nat-

keeping for reference

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))

h5: nat
h5 = multp (mkPair (S (S O)) (S (S (S O))))

h6: nat
h6 = factp (S (S (S O)))

h7: nat
h7 = subp (mkPair (S O) O)

h8: nat
h8 = exp (mkPair (S (S O)) (S (S (S O))))

h9: bool
h9 = lep (mkPair (S (S O)) (S (S (S O))))

h10: bool
h10 = eqp (mkPair (S (S O)) (S (S (S O))))

h11: bool
h11 = gtp (mkPair (S (S O)) (S (S (S O))))

h12: bool
h12 = gep (mkPair (S (S O)) (S (S (S O))))

h13: bool
h13 = ltp (mkPair (S (S O)) (S (S (S O))))--}

|||Extended 10/5

|||a test expecting (S (S (S O)))
t1: nat
t1 = add (S O) (S (S O))

|||a test expecting (S O)
t2: nat
t2 = add (S O) O

|||a test expecting (S (S O))
t3: nat
t3 = sub (S (S O)) O

|||a test expecting (S (S (S O)))
t4: nat
t4 = sub (S (S (S (S (S O))))) (S (S O))

|||a test expecting O
t5: nat
t5 = mult (S O) O

|||a test expecting (S (S (S (S (S (S O))))))
t6: nat
t6 = mult (S (S O)) (S (S (S O)))

|||a test expecting (S (S (S (S (S (S O))))))
t7: nat
t7 = fact (S (S (S O)))

|||a test expecting (S O)
t8: nat
t8 = fact O

|||a test expecting (S O)
t9: nat
t9 = ex (S (S O)) O

|||a test expecting (S (S (S (S (S (S (S (S O))))))))
t10: nat
t10 = ex (S (S O)) (S (S (S O)))

|||a test expecting (S O)
t11: nat
t11 = fib (S O)

|||a test expecting (S (S (S (S (S O)))))
t12: nat
t12 = fib (S (S (S (S (S O)))))

s: String
s = toString t1
