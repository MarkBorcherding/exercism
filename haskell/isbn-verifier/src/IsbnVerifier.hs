module IsbnVerifier (isbn) where

import Data.Char (digitToInt)
import Prelude

isbn :: String -> Bool
isbn x = filter values (parse x)


isChar x
  | c == 'X' = true
  | x `elem` ['0'..'9'] = true
  | otherwise = false

