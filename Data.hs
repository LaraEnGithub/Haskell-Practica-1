module Data (
  ListS (..),
  Gtree (..)
  ) where

data ListS a = NilS | Snoc (ListS a) a deriving (Eq, Show)

data Gtree a = Node a [Gtree a] deriving (Show, Eq)
-- agregar Void para  tener el árbol vacío, si no  tenemos un árbol de
-- al menos un elemento
