module Gigasecond exposing (add)

import Date exposing (Date, toTime, fromTime)
import Time exposing (Time, second)


gigasecond : Time
gigasecond =
    1000000000 * second


add : Date.Date -> Date.Date
add date =
    date
        |> toTime
        |> (+) gigasecond
        |> fromTime
