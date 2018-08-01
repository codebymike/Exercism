module RNATranscription exposing (toRNA)

import String exposing (uncons, cons)


toRNA : String -> Result Char String
toRNA dna =
    case uncons dna of
        Nothing ->
            Ok ""

        Just ( head, tail ) ->
            Result.map2 cons (transposeChar head) (toRNA tail)


transposeChar : Char -> Result Char Char
transposeChar char =
    case char of
        'G' ->
            Ok 'C'

        'C' ->
            Ok 'G'

        'T' ->
            Ok 'A'

        'A' ->
            Ok 'U'

        _ ->
            Err char
