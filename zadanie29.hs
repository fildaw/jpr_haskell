-- 29)

removeVertex :: (Num a, Ord a) => a -> [(a, a)] -> [(a, a)]
removeVertex _ [] = []
removeVertex x (y:ys)   | x == fst y || x == snd y   = removeVertex x ys
                        | otherwise = y : removeVertex x ys

-- "unpack" tuples
unpack :: (Num a, Ord a) => [(a,a)] -> [a]
unpack [] = []
unpack (x:xs) = fst x:snd x:unpack xs


findMinLeaf :: (Num a, Ord a) => [(a, a)] -> a
findMinLeaf tree = minimum [x | x <- vertices, length (filter (==x) vertices) == 1] where vertices = unpack tree

findNeighbour :: (Num a, Ord a) => a -> [(a, a)] -> a
findNeighbour _ [] = -1
findNeighbour l (v:tree)    | l == (fst v) = snd v
                            | l == (snd v) = fst v
                            | otherwise = findNeighbour l tree

pruferCodeCalc :: (Num a, Ord a) => [(a, a)] -> [a] -> [a]
pruferCodeCalc tree code    | length tree > 1 = pruferCodeCalc tree_after (code ++ [neighbour])
                            | otherwise = code
                            where       minLeaf = findMinLeaf tree
                                        neighbour = findNeighbour minLeaf tree
                                        tree_after = removeVertex minLeaf tree

prufer_code :: (Num a, Ord a) => [(a, a)] -> [a]
prufer_code tree = pruferCodeCalc tree []