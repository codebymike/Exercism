module Pangram exposing (isPangram)

import String exposing (filter, toLower, toList)
import Char exposing (isLower)
import Set exposing (fromList, size)


isPangram : String -> Bool
isPangram sentence =
    sentence
        |> toLower
        |> filter isLower
        |> String.toList
        |> Set.fromList
        |> size
        |> (==) 26
