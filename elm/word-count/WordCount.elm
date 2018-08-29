module WordCount exposing (wordCount)

import Dict exposing (Dict, update, empty)
import String exposing (split, toLower)
import Regex exposing (regex, replace)
import List exposing (map, filter, foldr)


wordCount : String -> Dict String Int
wordCount sentence =
    sentence
        |> split " "
        |> sanitize
        |> foldr
            (\word dict ->
                update word
                    (\count ->
                        case count of
                            Just count ->
                                Just (count + 1)

                            Nothing ->
                                Just 1
                    )
                    dict
            )
            empty


sanitize : List String -> List String
sanitize words =
    words
        |> map toLower
        |> map (\word -> replace Regex.All (regex "\\W") (\_ -> "") word)
        |> filter (\x -> x /= "")
