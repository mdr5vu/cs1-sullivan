module BoxTest

import Box
import nat

b1: Box nat
b1 = mkBox O

n: nat
n = unbox b1
