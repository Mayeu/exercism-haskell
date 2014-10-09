module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter anagrams
  where
    lower      = map toLower
    (lw, sw)   = (lower word, sort lw)
    anagrams s
      | lw == lower s          = False
      | sw == (sort . lower) s = True
      | otherwise              = False
