module Raindrops exposing (..)

appendIf b s prev =
  if b then
      prev
        |> Maybe.withDefault "" 
        |> (++) s
        |> Just
  else
      prev

divisibleBy y n =
  rem n y
  |> (==) 0

raindrops n =
  Nothing
    |> appendIf (divisibleBy 7 n) "Plong"
    |> appendIf (divisibleBy 5 n) "Plang"
    |> appendIf (divisibleBy 3 n) "Pling"
    |> Maybe.withDefault (toString(n))
