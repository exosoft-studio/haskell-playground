module Exo3 (
    sumDigits
) where
import Data.Char (digitToInt)

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits [0] = 0
sumDigits [a] = getSumOfDigit (show a)
sumDigits [a,b] = getSumOfDigit (show a) + getSumOfDigit (show b)
sumDigits (x:xs) = getSumOfDigit (show x) + sumDigits xs

getSumOfDigit :: String -> Integer
getSumOfDigit "" = 0
getSumOfDigit (x:xs)
    | null xs       = toInteger (digitToInt x)
    | otherwise     = toInteger (digitToInt x) + getSumOfDigit xs
