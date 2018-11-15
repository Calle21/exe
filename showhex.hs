
 -- show int as hex. eg. "showhex 64" prints 40

module Main where

import Data.Char (intToDigit)
import System.Environment (getArgs)

main = do [arg] <- getArgs
          putStrLn (showHex (read arg))

showHex :: Int -> String
showHex n | n < 0     = error "Negative number"
          | n < 16    = [intToDigit n]
          | otherwise = let (hi,lo) = n `divMod` 16
                        in showHex hi ++ showHex lo
