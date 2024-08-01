module Exo2 (
    doubleEveryOther
) where

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (x:xs)
    | null xs                = [x]
    | length xs == 1         = x*2 : xs
    | even (length xs)       = x : doubleEveryOther xs
    | otherwise              = x*2 : doubleEveryOther xs