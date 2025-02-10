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
size = error "D:"

-- | depth. Función que calcula la profundidad (número de niveles) de un árbol.
depth :: Gtree a -> Int
depth = error "D:"

-- | mapg. Función de orden superior que está basada en map para listas.
mapg :: (a -> b) -> Gtree a -> Gtree b
mapg = error "D:"

-- | searchg. Función que verifica si un elemento pertenece al árbol general.
searchg :: (Eq a) => a -> Gtree a -> Bool
searchg = error "D:"
