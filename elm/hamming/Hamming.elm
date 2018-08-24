module Hamming exposing (distance)

import String exposing (length, toList)
import List exposing (length, map2, filter)


distance : String -> String -> Result String Int
distance left right =
    if String.length left /= String.length right then
        Err "left and right strands must be of equal length"
    else
        map2
            (\x y -> x /= y)
            (toList left)
            (toList right)
            |> filter (\x -> x)
            |> List.length
            |> Ok
