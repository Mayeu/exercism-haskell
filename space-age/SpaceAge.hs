module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Int -> Float
ageOn planet seconds = (fromIntegral seconds) / (secondsPerYear planet)

secondsPerYear :: Planet -> Float
secondsPerYear planet =
  case planet of
       Mercury -> 0.2408467   * earthPeriod
       Venus   -> 0.61519726  * earthPeriod
       Earth   -> earthPeriod
       Mars    -> 1.8808158   * earthPeriod
       Jupiter -> 11.862615   * earthPeriod
       Saturn  -> 29.447498   * earthPeriod
       Uranus  -> 84.016846   * earthPeriod
       Neptune -> 164.79132   * earthPeriod
  where
    earthPeriod = 31557600
