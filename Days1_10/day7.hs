-- https://wiki.haskell.org/99_questions/1_to_10#Problem_7
-- Flatten a nested list structure. See actual problem definition.

data NestedList a = Elem a | List [NestedList a]

genlist :: NestedList Int
genlist = List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]

flattenNestedList :: [a] -> NestedList a -> [a]
flattenNestedList ls (Elem l) = ls ++ [l] 
flattenNestedList ls (List l) = ls ++ concat (flattenNestedList [] <$> l)