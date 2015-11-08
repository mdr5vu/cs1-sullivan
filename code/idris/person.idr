module person

import bool
import Person
||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record person where
    constructor Mkperson
    name : String
    age : Nat

-- An example value of type Person
p: person
p = Mkperson "Tommy" 3

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

p2: person
p2 = Mkperson "McKenzie" 19

t2: Nat
t2 = age p2

n2: String
n2 = name p2

p3: person
p3 = Mkperson "Collins" 20

t3: Nat
t3 = age p3

n3: String
n3 = name p3

p4: person
p4 = Mkperson "Sara" 21

t4: Nat
t4 = age p4

n4: String
n4 = name p4

-- in class change

tom: Person'
tom = mkPerson' "Tom" 18 72 false

mary: Person'
mary = mkPerson' "Mary" 21 68 true

-- record {fieldName = value } for field override

chong': Person
chong' = record { age = 20 } chong'

