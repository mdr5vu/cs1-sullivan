module ThanksgivingTest

import Thanksgiving
import nat
import bool
import ite
import list
import relation
import nat
import pair

mapName: list String
mapName = map name recipes

mapIng: list bool
mapIng = map lt5 recipes

onetofive: list Recipe
onetofive = filter lt5 recipes

numberlt5: list Nat
numberlt5 = map ingredients onetofive

totallt5: Nat
totallt5 = list.foldr plus 0 numberlt5

oneLinelt5: Nat
oneLinelt5 = list.foldr plus 0 (map ingredients (filter lt5 recipes))

totalInglt5: Nat
totalInglt5 = query plus 0 ingredients lt5 recipes

nameslt5: String
nameslt5 = query2 recipes lt5 name (++) ""

numberreclt5: Nat
numberreclt5 = query2 recipes lt5 countOne plus 0

aveIng: pair Nat Nat
aveIng = mkPair (query2 recipes lt5 ingredients plus 0) (query2 recipes lt5 countOne plus 0)

aveTime: pair Nat Nat
aveTime = mkPair (query2 recipes lt5 time plus 0) (query2 recipes lt5 countOne plus 0)
