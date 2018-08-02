module CollatzConjecture exposing (collatz)


collatz : Int -> Result String Int
collatz start =
    if start < 1 then
        Err "Only positive numbers are allowed"
    else
        Ok (collatzCalc start 0)


collatzCalc : Int -> Int -> Int
collatzCalc n c =
    if n == 1 then
        c
    else if n % 2 == 0 then
        collatzCalc (n // 2) (c + 1)
    else
        collatzCalc ((n * 3) + 1) (c + 1)
