module Etl exposing (transform)

import Dict exposing (Dict)


transform : Dict Int (List String) -> Dict String Int
transform input =
    input
        |> Dict.toList
        |> List.concatMap switchScores
        |> Dict.fromList


switchScores : ( Int, List String ) -> List ( String, Int )
switchScores ( points, letters ) =
    List.map (\letter -> ( String.toLower letter, points )) letters
