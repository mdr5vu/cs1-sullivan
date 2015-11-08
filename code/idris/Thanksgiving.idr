module Thanksgiving

import nat
import bool
import ite
import list
import relation
import nat
import pair
||| a record type where names are given to recipes. A recipe has a name and number of ingredients and states whether or not it has 5 or less ingredients
record Recipe where
  constructor MkRecipe
  name: String
  ingredients : Nat
  time: Nat
  lt5: bool
  
-- An example value of type Recipe
Pie: Recipe
Pie = MkRecipe "Pumpkin Pie" 7 65 false
Pn: String
Pn = name Pie
Pi: Nat
Pi = ingredients Pie
Pt: Nat
Pt = time Pie
Plt: bool
Plt = lt5 Pie

Turk: Recipe
Turk = MkRecipe "Stuffed Turkey" 9 270 false
Tn: String
Tn = name Turk
Ti: Nat
Ti = ingredients Turk
Tt: Nat
Tt = time Turk
Tlt: bool
Tlt = lt5 Turk

Gravy: Recipe
Gravy = MkRecipe "Gravy" 4 20 true
Gn: String
Gn = name Gravy
Gi: Nat
Gi = ingredients Gravy
Gt: Nat
Gt = time Gravy
Glt: bool
Glt = lt5 Gravy

Mash: Recipe
Mash = MkRecipe "Mashed Potatoes" 4 35 true
Mn: String
Mn = name Mash
Mi: Nat
Mi = ingredients Mash
Mt: Nat
Mt = time Mash
Mlt: bool
Mlt = lt5 Mash

recipes: list Recipe
recipes = Pie::Turk::Gravy::Mash::nil













