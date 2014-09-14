module Sublist
( Sublist (..)
, sublist
) where

import Data.List

data Sublist = Unequal | Sublist | Equal | Superlist
             deriving (Show, Eq)

sublist :: (Eq a) => [a] -> [a] -> Sublist
sublist xs ys
  | xs == ys          = Equal
  | ys `isInfixOf` xs = Superlist
  | xs `isInfixOf` ys = Sublist
  | otherwise         = Unequal
