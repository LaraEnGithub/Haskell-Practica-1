module GTree
  (
    Gtree (..),
    depth,
    mapg,
    searchg,
    size,
  ) where

import Data

-- | size. Función que calcula el tamaño (número de elementos) de un árbol
size :: Gtree a -> Int
size (Node x []) = 1
size (Node n (x:xs)) = size x + size (Node n xs)

-- | depth. Función que calcula la profundidad (número de niveles) de un árbol.
depth :: Gtree a -> Int
depth (Node x []) = 0
depth (Node n (x:xs)) = depth x + depth (Node n xs)

-- | mapg. Función de orden superior que está basada en map para listas.
mapg :: (a -> b) -> Gtree a -> Gtree b
mapg f (Node x []) = Node (f x) [] 
mapg f (Node x xs) = Node (f x) (map (mapg f) xs)

-- | searchg. Función que verifica si un elemento pertenece al árbol general.
searchg :: (Eq a) => a -> Gtree a -> Bool
searchg a (Node x []) = a == x 
searchg a (Node e (x:xs)) = searchg a x ||  a == e || searchg a (Node e xs)
