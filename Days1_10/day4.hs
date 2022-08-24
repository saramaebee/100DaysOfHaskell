-- https://wiki.haskell.org/99_questions/1_to_10#Problem_4
-- find number of elements in a list
import Data.List

-- kinda feels a bit cheaty
l :: [a] -> Int
l = length

-- so let's implement our own! it probably won't be super efficient but that's ok
-- we have two options as far as i'm aware: recursion or folds
myLength :: Int -> [a] -> Int
myLength n [] = n
myLength n (x:xs) = myLength (n + 1) xs

myLength' :: [a] -> Int
myLength' = foldl (\x y -> x + 1) 0