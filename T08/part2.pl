/* Olimpíada Brasileira de Informática
 * Pratique > Modalidade Iniciação > Nível 2 
 * Link: http://olimpiada.ic.unicamp.br/pratique/iniciacao/nivel2/sanduiche
 * 
 * Questão: Sanduíches do João
 * 
 * João chamou dois amigos para o lanche e está fazendo três sanduíches 
 * A, B e C. Cada sanduíche é composto de duas camadas: a de cima e a de 
 * baixo, obedecendo as seguintes características:
 * 
 * 	- uma vez feito, o sanduíche não pode ser virado (ou seja, a camada 
 *    de cima não se torna a camada de baixo);
 * 	- cada camada é feita com exatamente um dos seguintes ingredientes: 
 *    queijo, presunto, tomate ou ovo;
 * 	- nos três sanduíches, as camadas de baixo são diferentes entre si;
 * 	- nos três sanduíches, as camadas de cima são diferentes entre si;
 * 	- em cada sanduíche, a camada de cima é diferente da camada de baixo;
 * 	- exatamente uma camada de cima é de tomate;
 * 	- nenhuma das camadas de baixo é de presunto;
 * 	- no sanduíche C, uma das camadas é de queijo;
 * 	- a camada de cima do sanduíche B é de presunto. 
 *
 * -----------------------------------------
 */

partesDiferentes((C1,B1),(C2,B2),(C3,B3)) :- 
	C1 \== C2, C2 \== C3, C1 \== C3, %% Todas as camadas de cima são diferentes
	B1 \== B2, B2 \== B3, B1 \== B3, %% Todas as camadas de baixo são diferentes
	C1 \== B1, C2 \== B2, C3 \== B3. %% Cada sanduíche tem camadas diferentes

soB1Presunto((C1,B1),(C2,B2),(C3,B3)) :- C2 == presunto,
	C1 \== C2, B1 \== C2, B2 \== C2, C3 \== C2, B3 \== C2.

solucao(Sanduiches) :-
	Sanduiches = [A, B, C],
	B = (presunto, _),
	(C = (queijo, _); C = (_, queijo)),
	(A = (tomate, _); C = (tomate, _)),
	
	(A = (ovo,_); A = (_,ovo); B = (presunto, ovo);
	C = (queijo,ovo); C = (ovo, queijo)),

	soB1Presunto(A,B,C),
	partesDiferentes(A,B,C).

/* CONSULTAS: ------------------------------
 *
 * Questão 1:
 * ?- solucao([(A),(B),(tomate,C2)]).
 * # Observa-se que em todas as opções de resposta, C2 necessariamente deve ser queijo.
 *
 * Questão 3:
 * ?- solucao([(ovo,_),(_,ovo),(_)]).
 * ?- solucao([(ovo,_),(_),(_,ovo)]).
 * ?- solucao([(_,tomate),(_),(ovo,_)]).
 * ?- solucao([(queijo,_),(_),(_,tomate)]).
 * ?- solucao([(queijo,_),(_,queijo),(_)]).
 *
 * Questão 4:
 * ?- solucao([(A1,A2),(_),(C1,C2)]), A1 \== tomate, A2 \== tomate, C1 \== tomate, C2 \== tomate.
 * ?- solucao([(A1,A2),(B1,B2),(C1,C2)]), (A2 \== queijo, B2 \== queijo, C2 \== queijo), (((A1 = ovo, C1 \== ovo),(A2 \== ovo; B2 = ovo; C2 = ovo));((A1 \== ovo, C1 = ovo), (A2 = ovo; B2 = ovo; C2 \== ovo))).
 * ?- solucao([(_,C),(C,_),(_)]).
 * ?- solucao([(A1,_),(B1,_),(C1,_)]), A1 \== queijo, B1 \== queijo, C1 \== queijo.
 * ?- solucao([(A,_),(_),(C,_)]), (A == queijo; A == ovo),(C == queijo; C == ovo).
 * 
 * Questão 5:
 * ?- solucao([(A1,A2),(B1,B2),(C1,ovo)]), A2 \== ovo, B2 \== ovo.
 * # Observa-se que pode haver ovo apenas em outra camada de cima
 * e a única saída resultante não apresenta isso, portanto, não pode
 * haver 2 camadas de ovo.
 *
 * QUESTÕES --------------------------------
 *
 * QUESTÃO 1. Se a camada de cima do sanduíche C é de tomate, então qual 
 * das seguintes afirmaçÂões é necessariamente verdadeira?
 * R = A camada de baixo do sanduíche C é de queijo.
 *
 * QUESTÃO 2. Suponha que nenhuma das camadas é de presunto (nem a do 
 * sanduíche B). Se todas as outras condiçÂões permanecerem válidas, 
 * então qual das seguintes afirmaçÂões poderia ser verdadeira?
 * R = O sanduíche B não tem camada de queijo.
 *
 * QUESTÃO 3. Qual das seguintes afirmaçÂões poderia ser verdadeira?
 * R = Tanto a camada de cima do sanduíche A como a camada de 
 * baixo do sanduíche B são de ovo.
 *
 * QUESTÃO 4. Qual das seguintes afirmaçÂões poderia ser verdadeira?
 * R = Nenhuma camada de cima dos sanduíches é de queijo.
 * 
 * QUESTÃO 5. Se a camada de baixo do sanduíche C é de ovo, então cada 
 * uma das afirmaçÂões abaixo deve ser verdadeira EXCETO:
 * R = Duas das seis camadas são de ovo.
 *
 */

