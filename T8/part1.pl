/* Olimpíada Brasileira de Informática – OBI2013
 * 
 * Questão: No país das maravilhas
 *
 * Uma  companhia  de  teatro  está  iniciando  os  ensaios  para  uma  
 * nova versão  de  Alice  no  País  das Maravilhas. 
 * Oito meninas, Lia, Mel, Nanda, Olga, Pilar, Rute, Sara e Tina, 
 * disputam o papel de Alice, e vão realizar um teste para determinar
 * qual é a escolhida. Os testes, com duração de uma hora, serão feitos
 * de segunda-feira a sexta-feira, em dois horários, 8:00 e 9:00 horas. 
 * Uma menina será testada por vez, mas nenhuma menina será testada no 
 * horário de quarta-feira 8:00, pois já há uma reunião do resto do 
 * elenco marcada para esse dia e horário. 
 * 
 * As seguintes condições devem ser obedecidas:
 *  - Sara é testada terça-feira, 9:00.
 * 	- Pilar deve ser testada em algum momento antes de Nanda.
 * 	- Olga deve ser testada no mesmo dia que Mel.
 * 	- Se Lia é testada às 8:00 em algum dia, então Rute é testada às 8:00 
 *    em outro dia.
 */

%% ------------------------------------------
dia(seg, 1).
dia(ter, 2).
dia(qua, 3).
dia(qui, 4).
dia(sex, 5).

disponivel(D,8) :- D = seg; D = ter; D = qui; D = sex.
disponivel(D,9) :- D = seg; D = ter; D = qua; D = qui; D = sex.

antes(D1,H1,D2,H2) :- dia(D1,N1), dia(D2,N2), (N1<N2; (N1=N2, H1<H2)).

/*possibilidades(P,0) :- P=[].
possibilidades([(M,D,H)|T], N) :- 
	(H==8; H==9), (D==seg; D==ter; D==qua; D==qui; D==sex),
	(M==lia; M==mel; M==nanda; M==olga; M==pilar; M==rute; M==sara; M==tina),
	N1 is N-1, possibilidades(T,N1).*/

solucao(Testes, M) :- 
	Testes = [_, _, _, _, _, _, _, _],

    member(teste(sara, ter, 9), Testes),

    member(teste(pilar, DP, HP), Testes), 
    member(teste(nanda, DN, HN), Testes),
    antes(DP,HP,DN,HN),

    member(teste(olga, DM, _), Testes),
    member(teste(mel, DM, _), Testes),

    member(teste(lia, DL, HL), Testes),
    member(teste(rute, DR, HR), Testes),
    (HL=9; (DL\==DR, HL=:=HR)),

    member(teste(tina, DT, HT), Testes),

    disponivel(DL,HL), disponivel(DM,_),
    disponivel(DN,HN), disponivel(DP,HP),
    disponivel(DR,HR), disponivel(DT,HT),

    member(teste(M, _, 8), Testes).

/*
Consulta: 
member((rute, seg, 8), solucao(T)), member((tina, ter, 8), solucao(T)), 
member((pilar, qui, 8), solucao(T)), member((mel, sex, 8), solucao(T)).
*/
%% ------------------------------------------

/* QUESTÕES ---------------------------------
 *
 * QUESTÃO 19. Qual das alternativas seguintes poderia ser uma lista 
 * completa e correta das meninas testadas no horário das 8:00, 
 * de segunda a sexta-feira? 
 * R = D. (Rute, Tina, nenhuma, Pilar, Mel.)
 *
 * QUESTÃO 20. Se Nanda é testada sexta-feira, 8:00, qual é o dia 
 * e horário mais tarde na semana em que Mel poderia ser testada?
 * R = C. (Quinta-feira, 9:00)
 * 
 * QUESTÃO 21. Se Tina e Nanda são testadas em algum momento antes 
 * de Sara, qual das seguintes alternativas não pode ser verdadeira?
 * R = C. (Lia é testada quinta-feira, 8:00.)
 *
 * QUESTÃO 22. Se  Nanda  e  Olga  são  testadas  em algum  momento
 * antes  de  Tina,  qual  é  o  dia  e horário mais cedo na semana 
 * em que Tina pode ser testada?
 * R = A. (Quinta-feira, 8:00)
 *
 * QUESTÃO 23. Se  nenhuma  menina  é  testada  na quinta-feira, 8:00,
 * qual das seguintes alternativas poderia ser verdadeira?
 * R = D. (Lia é testada terça-feira, 8:00 e Olga é tes tada em algum 
 *         momento antes de Rute.)
 * 
 * QUESTÃO 24. Se  Rute  é  testada  na  quinta-feira, 8:00 e Tina é 
 * testada na sexta-feira, 8:00, qual das seguintes alternativas 
 * poderia ser verdadeira?
 * R = B. (Lia é testada na quarta-feira, 9:00.)
 *
 */