module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)

import List exposing (range, foldl, map)


squareOfSum : Int -> Int
squareOfSum n =
    n
        |> range 1
        |> foldl (+) 0
        |> square


sumOfSquares : Int -> Int
sumOfSquares n =
    n
        |> range 1
        |> map square
        |> foldl (+) 0


difference : Int -> Int
difference n =
    (squareOfSum n) - (sumOfSquares n)



-- TODO is there another way to pipe this?


square : Int -> Int
square number =
    number ^ 2
