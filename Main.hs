{-# LANGUAGE OverloadedStrings #-}

module Main where

import Codec.Compression.Zlib (compress)

main :: IO ()
main = putStrLn . show $ compress "hi"
