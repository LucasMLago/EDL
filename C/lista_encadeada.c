/*
Objetivo: observar a diferença de sintaxe entre uma lista l = [1,2,3,4] para uma lista em haskell
Desenvolva uma lista encadeada em C da maneira mais linear possível
*/

#include <stdio.h>
#include <stdlib.h>

// estrutura dos nós da lista encadeada
typedef struct node{
    int elemento;
    struct node *prox;
} node;

int main(void){
    node *no1;
    no1 = (node*)malloc(sizeof(node));
    
    // determina os nós da lista
    node *no2 = (node*)malloc(sizeof(node));
    node *no3 = (node*)malloc(sizeof(node));
    node *no4 = (node*)malloc(sizeof(node));

    // preenche a lista [1,2,3,4]
    no1 -> elemento = 1;
    no1 -> prox = no2;
    no2 -> elemento = 2;
    no2 -> prox = no3;
    no3 -> elemento = 3;
    no3 -> prox = no4;
    no4 -> elemento = 4;
    no4 -> prox = NULL;

    // print da lista encadeada
    printf("[%d, %d, %d, %d]\n", no1->elemento, no2->elemento, no3->elemento, no4->elemento);
    
    // libera a memória alocada
    free(no1);
    free(no2);
    free(no3);
    free(no4);

    return 0;
}