module Pangram exposing (isPangram)

import String exposing (filter, toLower, toList)
import Regex exposing (regex, contains)
import Set exposing (fromList, toList)
import List exposing (length)


isPangram : String -> Bool
isPangram sentence =
    sentence
        |> toLower
        |> filter (\x -> contains (regex "[a-z]") (toString x))
        |> String.toList
        |> Set.fromList
        |> Set.toList
        |> length
        |> (==) 26
