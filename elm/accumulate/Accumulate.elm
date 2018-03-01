module Accumulate exposing (..)


accumulate f list =
  case list of
    head::tail -> (f head)  :: (accumulate f tail)
    [] -> []
