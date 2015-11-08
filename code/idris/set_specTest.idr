module set_specTest

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import set

L1: list nat
L1 = (S (S (S (S (S O)))))::(S (S (S (S O))))::(S (S (S O)))::(S (S O))::(S O)::nil

L2: list nat
L2 = (S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S O)))))::(S (S (S (S (S (S (S (S (S (S (S O)))))))))))::nil 

L3: list Nat
L3 = 1::2::3::4::5::6::7::8::nil

s1: set_spec.set nat
s1 = mkSet (L1)

s2: set_spec.set nat
s2 = mkSet (L2)

s3: set_spec.set Nat
s3 = mkSet (L3)

sr: set_spec.set nat
sr = set_remove (S (S (S O))) s1

sc: Nat
sc = set_cardinality s3

sm: bool
sm = set_member (S O) s1

sm2: bool
sm2 = set_member (S O) s2

su: set_spec.set nat
su = set_union s1 s2

si: set_spec.set nat
si = set_intersection s1 s2

sd: set_spec.set nat
sd = set_difference s1 s2

sf: bool
sf = set_forall evenb s1

se: bool
se = set_exists evenb s2

sw: option nat
sw = set_witness evenb s2

sp: set_spec.set (pair nat nat)
sp = set_product s1 s2






 
