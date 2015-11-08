module list

--a polymorphic list abstract data type

import bool
import nat
import ite
import eq
import option
import Serialize

infixr 7 ::, ++

data list a = nil | (::) a (list a)

length: list a -> Nat
length nil = 0
length (n::l') = S (length l')

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil m = m
(++) (n::l1') l2 = n::((++) l1' l2)

||| map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

||| give a list and a predicate of elements return the sublist of elements for which the predicate is true
||| ite = if then else
||| if f applied to h returns true, evaluate the next, then apply the next which applies to that. 1st is true branch, 2nd is false
|||filter is a completely general purpose function that takes any condition and returns bool (T/F) and applies to a list and filters that list to give you a list of those which satisfy that bool. Ex: return even functions.. start with long list of natural numbers, filter out those that are odd, and get a list of natural numbers that are only even
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::filter f t) (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                    true
                    (member v t)

||| return the head of a list in an option
head: list a -> option a
head nil = none
head (h::t) = some h

||| return the tail of a list in an option
tail: list a -> option (list a)
tail nil = none 
tail (h::t) = some t

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = 
    and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::t) = (toString h) ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"




