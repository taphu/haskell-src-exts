{-# OPTIONS_GHC -F -pgmFhsx2hs #-}
{-# LANGUAGE RegularPatterns #-}
module RegularPatterns where

f :: [Int] -> [[Int]]
f [ 0+!, b+, 1?, (| 2,3 |) ] = [b]
f [ 1+, (| x | x `mod` 2 == 0 |) ] = [[x]]
f [ 2, a@(| b@:_, _ |)* ] = b:a
f _ = []
