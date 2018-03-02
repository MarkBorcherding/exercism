module Triangle exposing (..)

import Set

version : Int
version =
    2

type Triangle
    = Equilateral
    | Isosceles
    | Scalene

similarSides n a b c =
  [a,b,c]
    |> Set.fromList 
    |> Set.size
    |> (==) n

equilateral = similarSides 1
isosceles = similarSides 2
scalene = similarSides 3

invalidSize a b c =
    List.any (\i -> i <= 0) [a, b, c]

violatesInequality a b c =
    ((a + b) < c) ||
    ((a + c) < b) ||
    ((b + c) < a)

triangleKind a b c =
    if invalidSize a b c then Err "Invalid lengths"
    else if violatesInequality a b c then Err "Violates inequality"
    else if equilateral a b c then Ok Equilateral
    else if isosceles a b c then Ok Isosceles
    else if scalene a b c then Ok Scalene
    else Err "WHAT"
