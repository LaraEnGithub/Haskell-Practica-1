module Snoc (
  addFirstS,
  addLastS,
  appendS,
  fromHaskell,
  headS,
  initS,
  lastS,
  nthElementS,
  reverseS,
  tailS,
  takeS,
  toHaskell,
  ListS(..)
  ) where

import Data

-- | headS. Función que obtiene el primer elemento de la lista.
headS :: ListS a -> a
headS = error "D:"

-- | tailS. Función que obtiene la lista sin el primer elemento.
tailS :: ListS a -> ListS a
tailS = error "D:"

-- | initS. Función que obtiene la lista sin el ultimo elemento.
initS :: ListS a -> ListS a
initS = error "D:"

-- | lastS. Función que obtiene el último elemento de la lista.
lastS :: ListS a -> a
lastS = error "D:"

-- | nthElementS. Función que regresa el n-ésimo elemento de la lista.
nthElementS :: Int -> ListS a -> Maybe a
nthElementS = error "D:"

-- | addFirstS. Función que obtiene la lista donde el primer elemento es el
-- | elemento dado.
addFirstS :: a -> ListS a -> ListS a
addFirstS = error "D:"

-- | addLastS. Función que obtiene la lista donde el último elemento es el
-- | elemento dado.
addLastS :: a -> ListS a -> ListS a
addLastS = error "D:"

-- | reverseS. Función que obtiene la reversa de la lista.
reverseS :: ListS a -> ListS a
reverseS = error "D:"

-- | appendS. Función que obtiene la concatenación de dos listas.
appendS :: ListS a -> ListS a -> ListS a
appendS = error "D:"

-- | takeS. Función que obtiene la lista con los primeros n elementos.
takeS :: Int -> ListS a -> ListS a
takeS = error "D:"

-- | toHaskell. Función que dada una Lista, devuelte una lista de haskell.
toHaskell :: ListS a -> [a]
toHaskell = error "D:"

-- | fromHaskell. Función que dada una lista de Haskell, devuelve una Lista.
fromHaskell :: [a] -> ListS a
fromHaskell = error "D:"
