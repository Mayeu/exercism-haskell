module Gigasecond (fromDay) where

import Data.Time.Calendar

fromDay :: Day -> Day
fromDay = addDays gs
  where gs = floor (1e9 / 86400 :: Double)
