
 -- Show ascii code for char. eg. "ascii a" prints 97

module Main where

import System.Environment (getArgs)

main = do [[c]] <- getArgs
          putStrLn (show (fromEnum c :: Int))
