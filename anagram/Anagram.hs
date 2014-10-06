module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter anagrams
  where
    lower = map toLower
    anagrams s
      | lower word == lower s = False
      | (sort . lower) word == (sort . lower) s = True
      | otherwise = False

{-
-- Another possible version
anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter anagrams
  where lower = map toLower
        anagrams s = (lower word /= lower s)
                  && sort (lower word) == sort (lower s)
-}
