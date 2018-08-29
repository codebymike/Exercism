module WordCount exposing (wordCount)

import Dict exposing (Dict)
import String exposing (split)
import Regex exposing (..)


wordCount : String -> Dict String Int
wordCount sentence =
    sentence
        |> String.split " "
        |> sanitize
        |> List.foldr
            (\word dict ->
                Dict.update word
                    (\count ->
                        case count of
                            Just count ->
                                Just (count + 1)

                            Nothing ->
                                Just 1
                    )
                    dict
            )
            Dict.empty


sanitize : List String -> List String
sanitize words =
    words
        |> List.map String.toLower
        |> List.map (\word -> Regex.replace Regex.All (Regex.regex "\\W") (\_ -> "") word)
        |> List.filter (\x -> x /= "")
