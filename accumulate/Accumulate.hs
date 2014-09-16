module Accumulate ( accumulate ) where

accumulate :: (a -> b) -> [a] -> [b]
accumulate f xs = reverse $ recursiveAccumulate f xs []

recursiveAccumulate :: (a -> b) -> [a] -> [b] -> [b]
recursiveAccumulate _ [] acc     = acc
recursiveAccumulate f (x:xs) acc = 
  let new_acc = f x : acc
  in recursiveAccumulate f xs new_acc
