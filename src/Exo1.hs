module Exo1
    ( toDigits, toDigitsRev
    ) where
import Data.Char (digitToInt)

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n
    | n < 0 = []
    | otherwise = strToArray (show n)

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n
    | n < 0 = []
    | otherwise = strToArrayRev (show n)

strToArray :: String -> [Integer]
strToArray [] = []
strToArray (x:xs)
    | null xs   = [toInteger (digitToInt x)]
    | otherwise = toInteger (digitToInt x) : strToArray xs

strToArrayRev :: String -> [Integer]
strToArrayRev [] = []
strToArrayRev (x:xs)
    | null xs   = [toInteger (digitToInt x)]
    | otherwise =  strToArrayRev xs ++ [toInteger (digitToInt x)]

-- someFunc :: IO ()
-- someFunc = print (toDigitsRev 12344672)



-- module Exo1
--     ( someFunc1
--     ) where

-- someFunc1 :: IO ()
-- someFunc1 = putStrLn "someFunc"


-- module Exo1 (toDigits) where
-- import Data.Char (digitToInt)

-- test :: IO()
-- test = putStrLn "hey"

-- toDigits :: Integer -> [Integer]
-- toDigits 0 = []
-- toDigits n
--     | n < 0 = []
--     | otherwise = strToArray (show n)

-- strToArray :: String -> [Integer]
-- strToArray [] = []
-- strToArray (x:xs)
--     | null xs   = [toInteger (digitToInt x)]
--     | otherwise = toInteger (digitToInt x) : strToArray xs

-- doubleDigits :: [Integer] -> [Integer]
-- doubleDigits [] = []
-- doubleDigits [a] = [a]
-- doubleDigits [a,b] = [a*2,b]
-- doubleDigits (x:xs:xss)
--     | even (length (x : xs : xss)) = x*2 : xs : doubleDigits xss
--     | otherwise                    = x : xs*2 : doubleDigits xss

-- addDigits :: [Integer] -> Integer
-- addDigits [] = 0
-- addDigits [a] = a
-- addDigits [a,b] = a+b
-- addDigits (x:xs) = x + addDigits xs