/*
-- Propriedades comuns:
    -- String nome -> nome do personagem da classe escolhida
    -- Int vida -> quantidade de vida do seu personagem
    -- Int idade -> idade que seu personagem possui
    -- Float altura -> altura para o seu personagem em questão
    -- Bool rolamento -> possui rolamento ou não

-- Propriedades particulares:
    -- Guerreiro:
        -- Bool defesa física -> passiva
        -- Float porrada -> habilidade básica
        -- Int fúria -> habilidade especial (aumenta o dano do ataque básico em n vezes)

    -- espadachim:
        -- Bool sangramento -> passiva (após o acerto de 3 ataques causa sangramento no inimigo atingido)
        -- Float corte -> ataque básico
        -- Float corte com sangramento -> habilidade especial (atribui sangramento na arma e aumenta seu dano de habilidade básica)

    -- Mago:
        -- Bool defesa mágica -> passiva
        -- Float bola de fogo -> ataque básico
        -- Float erupcção -> ataque especial

    -- Sacerdote:
        -- Bool ânimo -> passiva (ao curar 10 vezes, aumenta a moral do grupo e, portanto, aumenta a velocidade de ataque de todos aliados)
        -- Int cura -> habilidade básica
        -- Int encantamento -> habilidade especial (fortalece a arma de um aliado em n vezes)
*/

#include <stdio.h>
#include <stdbool.h>

// Definição da estrutura Classes
struct Classes {
    // Habilidades comuns
    char nome[50];
    float vida;
    int idade;
    float altura;
    _Bool rolamento;

    // Habilidades particulares
    enum {
        GUERREIRO,
        ESPADACHIM,
        MAGO,
        SACERDOTE
    } classe;

    union {
        // Guerreiro
        struct {
            _Bool defesa_fisica;
            float porrada;
            int furia;
        } guerreiro;

        // Espadachim
        struct {
            _Bool sangramento;
            float corte;
            float corte_com_sangramento;
        } espadachim;

        // Mago
        struct {
            _Bool defesa_magica;
            float bola_de_fogo;
            float erupcao;
        } mago;

        // Sacerdote
        struct {
            _Bool animo;
            float cura;
            int encantamento;
        } sacerdote;
    };
};

// Função para imprimir os detalhes de uma classe
void printClass(struct Classes *character) {
    printf("Nome: %s\n", character->nome);
    printf("Vida: %.2f\n", character->vida);
    printf("Idade: %d\n", character->idade);
    printf("Altura: %.2f\n", character->altura);
    printf("Rolamento: %s\n", character->rolamento ? "Sim" : "Nao");

    // Imprimir habilidades particulares
    switch (character->classe) {
        case GUERREIRO:
            printf("Classe: Guerreiro\n");
            printf("Defesa Fisica: %s\n", character->guerreiro.defesa_fisica ? "Sim" : "Nao");
            printf("Porrada: %.2f\n", character->guerreiro.porrada);
            printf("Furia: %d\n", character->guerreiro.furia);
            break;

        case ESPADACHIM:
            printf("Classe: Espadachim\n");
            printf("Sangramento: %s\n", character->espadachim.sangramento ? "Sim" : "Nao");
            printf("Corte: %.2f\n", character->espadachim.corte);
            printf("Corte com Sangramento: %.2f\n", character->espadachim.corte_com_sangramento);
            break;

        case MAGO:
            printf("Classe: Mago\n");
            printf("Defesa Magica: %s\n", character->mago.defesa_magica ? "Sim" : "Nao");
            printf("Bola de Fogo: %.2f\n", character->mago.bola_de_fogo);
            printf("Erupcao: %.2f\n", character->mago.erupcao);
            break;

        case SACERDOTE:
            printf("Classe: Sacerdote\n");
            printf("Animo: %s\n", character->sacerdote.animo ? "Sim" : "Nao");
            printf("Cura: %.2f\n", character->sacerdote.cura);
            printf("Encantamento: %d\n", character->sacerdote.encantamento);
            break;
    }
}

int main() {
    // Exemplo de personagem
    struct Classes lucas = {
        .nome = "Lucas",
        .vida = 90.0,
        .idade = 20,
        .altura = 1.82,
        .rolamento = 0,
        .classe = GUERREIRO,
        .guerreiro = {.defesa_fisica = 1, .porrada = 6.7, .furia = 3}
    };

    // Exemplo de personagem
    struct Classes julia = {
        .nome = "Julia",
        .vida = 58.0,
        .idade = 19,
        .altura = 1.56,
        .rolamento = 1,
        .classe = MAGO,
        .mago = {.defesa_magica = 1, .bola_de_fogo = 9.3, .erupcao = 18.5}
    };

    // Imprimir detalhes dos personagens
    printf("Detalhes do Personagem Lucas:\n");
    printClass(&lucas);

    /* Retorna:
    
    Nome: Lucas       
    Vida: 90.00       
    Idade: 20
    Altura: 1.82      
    Rolamento: Nao    
    Classe: Guerreiro 
    Defesa Fisica: Sim
    Porrada: 6.70     
    Furia: 3
    */

    printf("\n");

    printf("Detalhes do Personagem Julia:\n");
    printClass(&julia);

    /* Retorna:

    Detalhes do Personagem Julia:
    Nome: Julia
    Vida: 58.00
    Idade: 19
    Altura: 1.56
    Rolamento: Sim
    Classe: Mago
    Defesa Magica: Sim
    Bola de Fogo: 9.30
    Erupcao: 18.50
    */

    return 0;
}
