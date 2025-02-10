module Listas where
 
    data Color = Azul | Amarillo | Rojo | Verde | Morado | Naranja deriving (Show)
    data MyBool = MyTrue | MyFalse-- deriving (Show) --Show como el ToString (para moestarlos)
                                  -- deriving (Eq)
    instance Show MyBool where
        -- show :: MyBool -> String
        show MyTrue = "TTTRueee"
        show MyFalse = "Falseeee"

        --Estan Show(impimir), Eq (comprara)
    
    instance Eq MyBool where
         -- (==) :: MyBool -> MyBool -> Bool  -- por que necesito poner esto?
         (==) MyTrue MyTrue = True
         (==) MyTrue MyFalse = False
         (==) MyFalse MyFalse = False
         (==) MyFalse MyTrue = False 
         
         -- (==) los parentesis son para que sepa que es una función (ya definida)
         -- () infija
         -- sin parentesis infija 

    --deriving - Haskell lo interpreta como puede
    -- instance - tu le dices commo lo tienes que interpretar       
    
    --- el instance, es para decidir como se va a comportar la impresión
    -- no podemos tener un derving (Show) y un instance al mismo tiempo

    -- existe ya en el lenguaje True, False, Bool

    myAnd :: MyBool -> MyBool -> MyBool
    myAnd MyTrue MyTrue = MyTrue
    myAnd _ _ = MyFalse  -- Si alguno es MyFalse, el resultado es MyFalse


    -- los guiones bajos, son cualquier otra cosa que no sean MyTrue y MyTrue me dara False

    mezcla :: Color -> Color -> Color
    mezcla Rojo Rojo = Rojo
    mezcla Rojo Azul = Morado
    mezcla Rojo Amarillo = Naranja

    -- si paso Rojo Amarillo si me regresa Naranja
    -- pero si paso Amarillo Rojo me manda error, por que primero revisa el primer termino
    -- revisa si cumple con lo que le pasas, si no , pasa al siguiente, como no encuentra al amarillo
    -- pasa al siguiente


    -- ahora si LISTAS
    -- las listas son de un mismo tipo

    -- la lista vacía   ,un elemento concatenado a uns lista 
    -- aquí estqmow creando nuestra propia lista 
    -- el constructir (lo que esa depues de |) recibe un elemento y una lista
    data List a = Void | Cons a (List a) deriving (Show)

     -- instancias para el tipo Lista

     instance (Show a) => Show (List a) where
        show Void = "[]"
        show (Cons a l) = "(" ++ show a ++ ":" ++ show l ++ ")"


    myLen :: List a -> Int
    myLen Void = 0
    myLen (Cons a l ) = 1 + myLen l 

    myMap :: (a -> b) -> List a -> List b
    myMap f Void = Void                                   -- puedes poner _ si no ocupas la f 
    myMap f (Cons x xs) =  Cons (f x) (myMap f xs)        -- para poder tener la cabeza (a) -- la necesitamos
                                                         -- Cons a l1 es la lista 


    -- (Eq a ) la firma para que los a se puedan compilar
    myElem :: (Eq a) a -> List a -> Bool   -- saber si el elemento esta en una lista
    myElem _ Void = False                  -- el elemento de una lista que no tiene elementos es False
    myElem e (Cons x xs ) = if e == x
                            then True
                            else MyElem e xs

    myElem' :: (Eq a) a -> List a -> Bool   
    myElem' _ Void = False                 
    myElem' e (Cons x xs ) 
      | e == x = True
      | otheriwse = MyElem' e xs 

      -- otherwise es por si el primero (o los primeros) casos no son ciertos , pasamos al otherwise
      -- ya sea un mensaje o aplicar la funcion como en myElem'

      -- | a = 1 == " A es 1"
      -- .  casos analogos
      -- .   ""
      -- .   ""
      -- otherwise == "A no es ni uno, ni dos, ni tres"

    -- MONADAS

     -- modada Maybe
     -- type Maybe :: * -> *
     -- data Maybe a = Nothing | Just a


     -- myHead - me regresa el primero elemento de la lista

    l3 = Cons 3 (Cons 2 (Cons 1)) -- por como definimos la contrucción de listas

     myHead :: List a -> a
     myHead Void = error "D:"
     myHead (Cons a l) = a 

     
     myHead' :: List a -> Maybe a
     myHead' Void = Nothing 
     myHead' (Cons a l) = Just a 

     -- Asociamos funciones a los resultados , para lidiar con los errores 
     -- Con lo que nos regresa 
     g (Just a) = "Se encontro: " ++ show a
     g Nothing = "NO SE ENCONTRO"

     -- se prueba en la terminal con g (just a)
     -- probar todas las funciones (si no recuerdo, buscar)





   -- PARA LA PRACTICA
     reverse Snoc :: List a -> List a
     rervse Snoc l = fromHaskell $ reverse $ toHaskell

     -- no se vale utilizar los algorutmos de Haskell, pasarlo a las listas de Haskell
     -- y luego ponerlo en tus propias listas
     -- nosostros tenemos que escribir el algoritmo reverse


     -- NOTA : checar el repositorio de Emi, donde esta este archivo 
     -- checar las notas de Odín , ayuda a pensar los algoritmos 
     -- repositorio en el classroom 
     -- traer dudas de la practica la siguiente clase
     -- Libro : Aprender Haskell por el bien de todos