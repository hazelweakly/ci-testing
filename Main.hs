module Main where

import Lens.Micro

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  print $ (1, 2) & _1 <%~ negate
