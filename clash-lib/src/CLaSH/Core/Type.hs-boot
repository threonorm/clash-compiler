{-|
  Copyright   :  (C) 2012-2016, University of Twente,
                          2017, Google Inc.
  License     :  BSD2 (see the file LICENSE)
  Maintainer  :  Christiaan Baaij <christiaan.baaij@gmail.com>
-}

{-# LANGUAGE MultiParamTypeClasses #-}

{-# OPTIONS_GHC -fno-warn-missing-methods #-}

module CLaSH.Core.Type where

import Control.DeepSeq                  (NFData)
import Data.Hashable                    (Hashable)
import GHC.Generics                     (Generic)
import Unbound.Generics.LocallyNameless (Alpha,Subst)

import                CLaSH.Core.Name
import {-# SOURCE #-} CLaSH.Core.Term
import {-# SOURCE #-} CLaSH.Core.TyCon

data Type

type Kind   = Type
type TyName = Name Type
type TyOccName = OccName Type
type KiName = Name Kind
type KiOccName = OccName Kind

instance Eq       Type
instance Generic  Type
instance Show     Type
instance Alpha    Type
instance Subst    Type Type
instance Subst    Term Type
instance NFData   Type
instance Hashable Type

mkTyConTy :: TyConName -> Type
