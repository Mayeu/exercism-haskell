module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter anagrams
  where
    normalise s = let lowercase = map toLower s in (lowercase, sort lowercase)
    (lw, sw)    = normalise word
    anagrams s  = let isDifferent = lw /= fst (normalise s)
                      isAnagram   = sw == snd (normalise s)
                  in  isDifferent && isAnagram
