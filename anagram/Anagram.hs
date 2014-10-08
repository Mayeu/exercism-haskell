module Anagram (anagramsFor) where

import Data.List (sort)
import Data.Char (toLower)

anagramsFor :: String -> [String] -> [String]
anagramsFor word = filter anagrams
  where
    lower      = map toLower
    lowerWord  = lower word
    sortedWord = sort lowerWord
    anagrams s
      | lowerWord == lower s           = False
      | sortedWord == (sort . lower) s = True
      | otherwise                      = False
