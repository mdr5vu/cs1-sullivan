module colors

import pair
import bool

data color = red | green | blue | yellow | cyan | magenta

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement yellow = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive cyan = false
additive magenta = false
additive yellow = false

subtractive: color -> bool
subtractive c = not (additive c)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair cyan red) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements _ = false

mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan magenta) = blue





