-- https://wiki.haskell.org/99_questions/1_to_10#Problem_10
-- run-length encoding

import Data.List (group)

runLength :: Eq a => [a] -> [(a, Int)]
runLength = fmap (\x -> (head x, length x)) . group