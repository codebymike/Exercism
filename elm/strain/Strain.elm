module Strain exposing (discard, keep)

import List exposing (foldr)


keep : (a -> Bool) -> List a -> List a
keep predicate list =
    foldr
        (\x acc ->
            if predicate x then
                x :: acc
            else
                acc
        )
        []
        list


discard : (a -> Bool) -> List a -> List a
discard predicate list =
    keep (not << predicate) list
