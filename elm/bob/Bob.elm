module Bob exposing (hey)

import String exposing (endsWith, any, toUpper, trim, isEmpty)
import Char exposing (isDigit, isUpper)


hey : String -> String
hey remark =
    if isShouting remark && isQuestion remark then
        "Calm down, I know what I'm doing!"
    else if isShouting remark then
        "Whoa, chill out!"
    else if isSilent remark then
        "Fine. Be that way!"
    else if isQuestion remark then
        "Sure."
    else
        "Whatever."


hasNumbers : String -> Bool
hasNumbers phrase =
    any isDigit phrase


isShouting : String -> Bool
isShouting phrase =
    any isUpper phrase && toUpper phrase == phrase


isSilent : String -> Bool
isSilent phrase =
    phrase
        |> trim
        |> isEmpty


isQuestion : String -> Bool
isQuestion phrase =
    endsWith "?" phrase
