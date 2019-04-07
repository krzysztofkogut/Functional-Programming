module Tree where

data Tree a = Empty | Node a (Tree a) (Tree a)

empty :: Tree a -> Bool
empty (Empty) = True
empty (Node a _ _) = False

p = Empty
t = Node 5 Empty Empty
