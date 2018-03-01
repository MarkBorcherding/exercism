module Leap exposing (..)

every n y = (%) y n
            |> (==) 0

every4 = every 4
every100 = every 100
every400 = every 400

isLeapYear y = every4 y && ( not(every100 y) || every400 y)
