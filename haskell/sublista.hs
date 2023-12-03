-- printar o tipo de uma variável
import Data.Typeable

-- lista que guarda sublistas de inteiros
data ListaInt = NoInt [Int] ListaInt 
              | VazioInt

--------------------------------------------------------------------------
-- NoInt: 
    -- -> nó com uma lista de inteiros 
    -- -> possui uma referência para o resto da lista (ListaInt)

-- VazioInt: 
    -- -> lista vazia
--------------------------------------------------------------------------

-- Instância de Show para ListaInt
instance Show ListaInt where
    show (NoInt sublista resto) = show sublista ++ " : " ++ show resto
    show VazioInt = "VazioInt"

-- lista do tipo ListaInt criado
l1 :: ListaInt
l1 = NoInt [27,11,2003] (NoInt [703] (NoInt [13,2049] VazioInt))

-- lista primitiva equivalente a ListaInt
l2 :: [[Int]]
l2 = [ [27,11,2003], [703], [13,2049] ]

-- Main
main :: IO ()
main = do
    print (typeOf l1) -- retorna ListaInt
    print l1          -- retorna  [27,11,2003] : [703] : [13,2049] : VazioInt

    putStrLn ("")
    
    print (typeOf l2) -- retorna [[Int]]
    print l1          -- retorna [27,11,2003] : [703] : [13,2049] : VazioInt
