module Pangram exposing (..)

import Set
import Regex

isPangram s =
    String.toLower s
    |> Regex.find Regex.All (Regex.regex "[a-z]")
    |> List.map .match
    |> Set.fromList
    |> Set.size
    |> (==) 26
