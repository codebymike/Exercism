module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    if divisibleBy4 year && not (divisibleBy100 year && not (divisibleBy400 year)) then
        True
    else
        False


divisibleBy4 : Int -> Bool
divisibleBy4 =
    divisibleBy 4


divisibleBy100 : Int -> Bool
divisibleBy100 =
    divisibleBy 100


divisibleBy400 : Int -> Bool
divisibleBy400 =
    divisibleBy 400


divisibleBy : Int -> Int -> Bool
divisibleBy x y =
    y % x == 0
