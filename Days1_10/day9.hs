-- https://wiki.haskell.org/99_questions/1_to_10#Problem_9
-- Group consecutive equal elements together into sublists
import Data.List (group)

thisIsTooEasy :: Eq a => [a] -> [[a]]
thisIsTooEasy = group

 