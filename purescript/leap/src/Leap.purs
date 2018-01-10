module Leap where

import Prelude

isLeapYear :: Int -> Boolean
isLeapYear year = every4(year) && (every400(year) || not every100(year))

factorableBy :: Int -> Int -> Boolean
factorableBy factor n =  (n `mod` factor) == 0

every4 = factorableBy 4
every100 = factorableBy 100
every400 = factorableBy 400
