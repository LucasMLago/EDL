-- printar o tipo de uma variável
import Data.Typeable

-- Definindo o tipo paramétrico para árvores binárias
data Tree arvore = Empty 
            | Node arvore (Tree arvore) (Tree arvore) 
            
            deriving (Show)

-- Árvore binária de booleanos
arvore_bool :: Tree Bool
arvore_bool = Node True (Node False Empty Empty) (Node True Empty Empty)

-- Árvore de listas de inteiros
arvore_lista_int :: Tree [Int]
arvore_lista_int = Node [27,11,2003] (Node [703] Empty Empty) (Node [13,2049] Empty Empty)

-- Função para imprimir uma árvore binária de forma recursiva
printTree :: Show a => Tree a -> String
printTree Empty = ""
printTree (Node value left right) =
  show value ++ "" ++ printTree left ++ printTree right

main :: IO ()
main = do
  putStrLn "Arvore binaria de booleanos:"
  print (typeOf arvore_bool)    -- Tree Bool
  print $ printTree arvore_bool -- "TrueFalseTrue"
  
  putStrLn ""

  putStrLn "Arvore binaria de listas de inteiros:"
  print (typeOf arvore_lista_int)    -- Tree [Int]
  print $ printTree arvore_lista_int -- retorna "[27,11,2003][703][13,2049]"
