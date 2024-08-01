module Main (main) where

import Exo1
import Exo2
import Exo3
import Exo4

main :: IO ()
main = do
    -- print (toDigits 1234)
    -- print (toDigitsRev 1234)
    -- print (toDigits 0)
    -- print (toDigits (-17))
    
    -- print (doubleEveryOther [8,7,6,5])
    -- print (doubleEveryOther [1,2,3])

    -- print (sumDigits [16,7,12,5])
    
    print (validate 4990010112050276)
    print (validate 4012888888881881)
    print (validate 4012888888881882)
