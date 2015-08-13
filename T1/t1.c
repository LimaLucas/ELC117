/*
 * Algoritmo desenvolvido para trabalho da disciplina de Paradigmas de Programação
 * Curso de Sistemas de Informação da UFSM
 * Aluno Lucas Lima de Oliveira
 *
 * Algoritmo que filtra, ordena e salva em um arquivo palavras ("logins") de até 8 caracteres
 * a partir de outro arquivo no qual estão listas.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct lista_t{
	char *login;
	struct lista_t *prox;
	struct lista_t *ant;
}Lista_t;

typedef struct lista{
	Lista_t *primeiro;
	Lista_t *ultimo;
}Lista;


Lista* lista_insere_log(Lista *lst, char *descricao, int tam){
	Lista_t* novo = (Lista_t*) malloc(sizeof(Lista_t));

	novo->login = (char*) malloc(tam);
	strcpy(novo->login, descricao);

	novo->prox = lst->primeiro;
	if(novo->prox == NULL)
		lst->primeiro = lst->ultimo = novo;
	else
		lst->primeiro = novo;

	return lst;
}

Lista* filtra_logs(FILE *arquivo){

	Lista *lst;
	char *loginAux, c;
	int i = 0;

	loginAux = (char*) malloc(sizeof(char));
	lst = (Lista*) malloc(sizeof(Lista));
	lst->primeiro = lst->ultimo = NULL;

	c = fgetc(arquivo);
	while(c != EOF){
		if(c == '\n'){
			i--;
			
			if(i<=8){
				lst = lista_insere_log(lst, loginAux, i);
			}

			i = 0;
			loginAux = (char*) realloc(loginAux, sizeof(char));

		}else{
			loginAux = (char*) realloc(loginAux, i+1);
			loginAux[i] = c;
			loginAux[i+1] = '\0';
			i++;
		}

		c = fgetc(arquivo);
	}

	return lst;
}

Lista* ordena_logs(Lista *logs){

	Lista_t *lst1, *lst2;
	char *aux;

	lst1 = logs->primeiro;

	while(lst1 != NULL){
		lst2 = lst1->prox;
		while(lst2 != NULL){
			if(strcmp(lst1->login, lst2->login)>0){ // a = menor, z = maior || strcmp = 1 se lst1 > lst2
				aux = lst1->login;
				lst1->login = lst2->login;
				lst2->login = aux;
			}
			lst2 = lst2->prox;
		}
		lst1 = lst1->prox;
	}

	return logs;
}

Lista* sufixo_logs(Lista *logs){

	Lista_t *lst = logs->primeiro;

	while(lst != NULL){
		lst->login = (char*) realloc(lst->login, strlen(lst->login)+14);
		strcat(lst->login, "@mycompany.com");
		lst = lst->prox;
	}

	return logs;

}

void cria_novo_arquivo(Lista *logs, char *nome){
	
	Lista_t *lst = logs->primeiro;
	int n = strlen(nome);
	
	nome[n-1] = nome[n-2] = nome[n-3] = nome[n-4] = '\0';
	strcat(nome, "_NOVO.txt");

	FILE *novo = fopen(nome, "w");

	while(lst != NULL){
		fprintf(novo, "%s\n", lst->login);
		lst = lst->prox;
	}

	fclose(novo);
}

void lista_libera(Lista *logs){
	Lista_t *lst = logs->primeiro;

	while(lst != NULL){
		logs->primeiro = lst->prox;
		free(lst->login);
		free(lst);
		lst = logs->primeiro;
	}
	free(logs);
}

int main(int argc, char **argv){

	if(argc == 1){
 		printf("Insira o nome do arquivo!\n\a");
 		return 0;
 	}else if(argc > 2){
 		printf("Insira apenas o nome de um arquivo!\n");
 		return 0;
 	}

 	FILE *arquivo = fopen(argv[1], "r");
 	if(arquivo == NULL){
 		printf("Erro ao abrir o arquivo! Tente novamente.\n");
 		return 0;
 	}

 	Lista *logs;

 	logs = filtra_logs(arquivo);
 	logs = ordena_logs(logs);
 	logs = sufixo_logs(logs);
 	cria_novo_arquivo(logs, argv[1]);
 	
 	fclose(arquivo);
 	lista_libera(logs);

    return 0;
}

