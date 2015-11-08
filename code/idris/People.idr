module People

import Person
import list
import bool

-- a few persons

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person 
mary = mkPerson "Mary" 20 59 true

ge: Person 
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

ages: list Nat
ages = map age people

mapHeight: list Person -> list Nat
mapHeight nil = nil
mapHeight (h::t) = (height h)::(mapHeight t)

heights: list Nat
heights = map height people

mapGender: list Person -> list bool
mapGender nil = nil
mapGender (h::t) = (gender h)::(mapGender t)

genders: list bool
genders = map gender people


