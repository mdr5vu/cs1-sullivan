module colors2

import bool

%default total

data color = red | green | blue | cyan | magenta | yellow

comp: color -> color
comp red = cyan
comp green = magenta
comp blue = yellow

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive c = not (additive c)


