module BangData where

import CLaSH.Prelude

data BangData
  = BangData
  { d1 :: !(Index 15)
  , d2 :: !(Unsigned 8)
  }

topEntity (BangData x y) = BangData (x+1) (2*y)
