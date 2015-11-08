-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

|||given a pair of bool values (a, b), return true if both a and b are true, otherwise return false
and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

|||given a pair of bool values (a, b), return false if both a and b are false, otherwise return true
or: bool -> bool -> bool
or false false = false
or _ _ = true

|||short for (exclusive or), given a pair of bool values (a, b), return true if exactly one of a or b is true, otherwise return false
xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

|||short for (not and), given a pair of bool values (a, b), return false if both a and b are true, otherwise return true
nand: bool -> bool -> bool
nand true true = false
nand _ _ = true

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"

