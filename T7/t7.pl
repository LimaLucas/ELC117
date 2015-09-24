
%% - EXERCÍCIO 1
pred([],[]).
pred([H|T],[H1|T1]) :- H1 is H + 1, pred(T, T1).

/*
 * A função acima recebe uma lista com head e tail e, recursivamente,
 * faz a soma de cada número da lista com 1, até que as duas listas
 * estejam vazias. É necessário que as duas listas tenham o mesmo
 * tamanho.
 * 
 * ?- pred([1,2,3],[a,b,c]).
 * false.
 *
 * ?- pred([8,9],L).
 * L = [9, 10].
 * 
 * ?- pred([1,2,3],[2,L]).
 * false.
 *
 * ?- pred([1,2],[2,X]).
 * X = 3.
 */

%% - EXERCÍCIO 2
ziplus([],[],[]).
ziplus([H1|T1],[H2|T2],[H|T]) :- H is H1+H2, ziplus(T1,T2,T).

%% - EXERCÍCIO 3
countdown(0,[0]).
countdown(N,[H|T]) :- H is N, A is N-1, countdown(A,T).

%% - EXERCÍCIO 4
potencias(0,[]).
potencias(1,[1]).
potencias(N, [H|T]) :- A is N-1, potencias(A, T), H is T*2.
