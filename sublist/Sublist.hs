module Sublist ( Sublist (Unequal, Sublist, Equal, Superlist), sublist ) where

import Data.List as List

data Sublist = Unequal | Sublist | Equal | Superlist
             deriving (Show, Eq)

sublist :: (Eq a) => [a] -> [a] -> Sublist
sublist [] [] = Equal
sublist [] _  = Sublist
sublist _ []  = Superlist
sublist xs ys
  | xs == ys = Equal
  | List.length xs > List.length ys = if ys `isPartOf` xs
                                      then Superlist
                                      else Unequal
  | List.length ys > List.length xs = if xs `isPartOf` ys
                                      then Sublist
                                      else Unequal
  | otherwise = Unequal

isPartOf :: (Eq a) => [a] -> [a] -> Bool
xs `isPartOf` ys
  -- We guard against the fact that the xs list become bigger than the ys one
  | List.length xs <= List.length ys =
      if List.and $ map (\ (x, y) -> x == y) $ zip xs ys
      then True
      else xs `isPartOf` List.tail ys
  | otherwise = False
                  
