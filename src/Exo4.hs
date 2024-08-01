module Exo4 (
    validate
) where
import Exo1
import Exo2
import Exo3

validate :: Integer -> Bool
validate n
    | length (show n) < 16 || length (show n) > 16 = False
    | otherwise = verify n

verify :: Integer -> Bool
verify n
    | sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0 = True
    | otherwise = False