module Grains exposing (square)

import List exposing (foldl, range)


square : Int -> Maybe Int
square n =
    if n > 0 then
        Just (foldl (\x acc -> acc * 2) 1 (range 2 n))
    else
        Nothing
