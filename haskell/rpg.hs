-- Propriedades comuns: 
    -- String nome -> nome do personagem da classe escolhida
    -- Int vida -> quantidade de vida do seu personagem
    -- Int idade -> idade que seu personagem possui
    -- Float altura -> altura para o seu personagem em questão
    -- Boolean rolamento -> possui rolamento ou não

-- Propriedades particulares:
    -- Guerreiro:
        -- Boolean defesa física -> passiva
        -- Float porrada -> habilidade básica
        -- Int fúria -> habilidade especial (aumenta o dano do ataque básico em n vezes)

    -- espadachim:
        -- Boolean sangramento -> passiva (após o acerto de 3 ataques causa sangramento no inimigo atingido)
        -- Float corte -> ataque básico
        -- Float corte com sangramento -> habilidade especial (atribui sangramento na arma e aumenta seu dano de habilidade básica)

    -- Mago: 
        -- Boolean defesa mágica -> passiva
        -- Float bola de fogo -> ataque básico
        -- Float erupcção -> ataque especial 

    -- Sacerdote:
        -- Boolean ânimo -> passiva (ao curar 10 vezes, aumenta a moral do grupo e, portanto, aumenta a velocidade de ataque de todos aliados)
        -- Int cura -> habilidade básica
        -- Int encantamento -> habilidade especial (fortalece a arma de um aliado em n vezes)

data Classes = Guerreiro {
                
                -- habilidades comuns
                nome :: String,
                vida :: Float,
                idade :: Int, 
                altura :: Float,
                rolamento :: Bool,

                -- habilidades particulares
                defesa_fisica :: Float,
                porrada :: Float,
                furia :: Int
                }

             |Espadachim {
                
                -- habilidades comuns
                nome :: String,
                vida :: Float,
                idade :: Int, 
                altura :: Float,
                rolamento :: Bool,

                -- habilidades particulares
                sangramento :: Bool,
                corte :: Float,
                corte_com_sangramento :: Float
                }

             | Mago {

                -- habilidades comuns
                nome :: String,
                vida :: Float,
                idade :: Int, 
                altura :: Float,
                rolamento :: Bool,

                -- habilidades particulares
                defesa_magica :: Float,
                bola_de_fogo :: Float,
                erupcao :: Float
                }

             | Sacerdote {

                -- habilidades comuns
                nome :: String,
                vida :: Float,
                idade :: Int,
                altura :: Float,
                rolamento :: Bool,
                
                -- habilidades particulares
                animo :: Bool,
                cura :: Float,
                encantamento :: Int
                }
                deriving (Show)


-- Main

lucas :: Classes
lucas = Espadachim "Lucas" 60.0 20 1.82 True True 6.3 12.6

julia :: Classes
julia = Sacerdote "Julia" 55.0 19 1.56 False True 5.75 3

main :: IO ()
main = do
    print lucas -- retorna Espadachim {
                        -- nome = "Lucas", 
                        -- vida = 60.0,
                        -- idade = 20,
                        --  altura = 1.82,
                        -- rolamento = True,
                        -- sangramento = True,
                        -- corte = 6.3,
                        -- corte_com_sangramento = 12.6}
        
    print julia -- retorna Sacerdote {
                    -- nome = "Julia",
                    -- vida = 55.0,
                    -- idade = 19,
                    -- altura = 1.56,
                    -- rolamento = False,
                    -- animo = True,
                    -- cura = 5.75,
                    -- encantamento = 3}