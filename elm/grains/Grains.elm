module Grains exposing (square)

import List exposing (foldl, range)


square : Int -> Maybe Int
square n =
    if n > 0 then
        Just (2 ^ (n - 1))
    else
        Nothing
