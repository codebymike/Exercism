module TwelveDays exposing (recite)

import List exposing (range, map, reverse, take)
import Array exposing (Array, fromList, get)
import String exposing (join)


type alias Poem =
    List String


recite : Int -> Int -> Poem
recite start stop =
    map poemLines (range start stop)


poemLines : Int -> String
poemLines day =
    "On the "
        ++ getOrdinal day
        ++ " day of Christmas my true love gave to me, "
        ++ getGiftsList day
        ++ "."


getGiftsList : Int -> String
getGiftsList numberOf =
    take numberOf gifts
        |> constructPoemLine


constructPoemLine : List String -> String
constructPoemLine lines =
    case lines of
        [] ->
            ""

        [ head ] ->
            head

        head :: tail ->
            join ", " (reverse tail) ++ ", and " ++ head


gifts : List String
gifts =
    [ "a Partridge in a Pear Tree"
    , "two Turtle Doves"
    , "three French Hens"
    , "four Calling Birds"
    , "five Gold Rings"
    , "six Geese-a-Laying"
    , "seven Swans-a-Swimming"
    , "eight Maids-a-Milking"
    , "nine Ladies Dancing"
    , "ten Lords-a-Leaping"
    , "eleven Pipers Piping"
    , "twelve Drummers Drumming"
    ]


getOrdinal : Int -> String
getOrdinal day =
    Maybe.withDefault "" (get day ordinals)


ordinals : Array String
ordinals =
    Array.fromList
        [ "zeroth"
        , "first"
        , "second"
        , "third"
        , "fourth"
        , "fifth"
        , "sixth"
        , "seventh"
        , "eighth"
        , "ninth"
        , "tenth"
        , "eleventh"
        , "twelfth"
        ]
