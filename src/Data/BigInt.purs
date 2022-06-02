module Data.BigInt
  ( BigInt
  , fromInt
  , fromString
  , toInt
  , toNumber
  )
  where

import Prelude
import Data.Maybe (Maybe(..))

foreign import data BigInt :: Type

foreign import eqImpl :: BigInt -> BigInt -> Boolean

foreign import compareImpl :: BigInt -> BigInt -> Int

foreign import zeroImpl :: BigInt

foreign import oneImpl :: BigInt

foreign import addImpl :: BigInt -> BigInt -> BigInt

foreign import subImpl :: BigInt -> BigInt -> BigInt

foreign import mulImpl :: BigInt -> BigInt -> BigInt

instance Eq BigInt where
  eq = eqImpl

instance Ord BigInt where
  compare x y = case compareImpl x y of
                  1 -> GT
                  0 -> EQ
                  _ -> LT

instance Semiring BigInt where
  add = addImpl
  mul = mulImpl
  zero = zeroImpl
  one = oneImpl

instance Ring BigInt where
  sub = subImpl

instance CommutativeRing BigInt

foreign import fromInt :: Int -> BigInt

foreign import fromStringImpl
  :: forall a
   . (a -> Maybe a)
  -> Maybe a
  -> String
  -> Maybe BigInt

fromString :: String -> Maybe BigInt
fromString = fromStringImpl Just Nothing

foreign import toInt :: BigInt -> Int

foreign import toNumber :: BigInt -> Number