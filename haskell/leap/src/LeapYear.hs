module LeapYear (isLeapYear) where

import Prelude

isLeapYear :: Int -> Bool
isLeapYear year
  | every400 year = True
  | every100 year = False
  | every4 year   = True
  | otherwise     = False

factorableBy :: Int -> Int -> Bool
factorableBy factor n = (mod n factor) == 0

every4 = factorableBy 4
every100 = factorableBy 100
every400 = factorableBy 400
