module Gigasecond (fromDay) where

import Data.Time.Calendar

gigasecondInDay :: Integer
gigasecondInDay= floor (10 ** 9 / 60 / 60 / 24 :: Double)

fromDay :: Day -> Day
fromDay = addDays gigasecondInDay
