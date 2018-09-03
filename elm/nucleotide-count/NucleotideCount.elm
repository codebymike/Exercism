module NucleotideCount exposing (nucleotideCounts, version)

import String exposing (foldr)


version : Int
version =
    2


type alias NucleotideCounts =
    { a : Int
    , t : Int
    , c : Int
    , g : Int
    }


nucleotideCounts : String -> NucleotideCounts
nucleotideCounts =
    foldr counter counts


counts : NucleotideCounts
counts =
    NucleotideCounts 0 0 0 0


counter : Char -> NucleotideCounts -> NucleotideCounts
counter char ({ a, t, c, g } as counts) =
    case char of
        'A' ->
            { counts | a = a + 1 }

        'T' ->
            { counts | t = t + 1 }

        'C' ->
            { counts | c = c + 1 }

        'G' ->
            { counts | g = g + 1 }

        _ ->
            counts
