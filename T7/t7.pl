
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
countdown(N,[H|T]) :- H is N, N1 is N-1, countdown(N1,T), !.

%% - EXERCÍCIO 4
potencias(N,L) :- a_pot(N,0,L).

a_pot(N,N1,[]) :- N =:= N1.
a_pot(N,N1,[H|T]) :- H is 2^N1, N2 is N1+1, a_pot(N,N2,T), !.

%% - EXERCÍCIO 5
positivos([],[]).
positivos([H|T],L) :- H =< 0, positivos(T,L), !.
positivos([H|T],[H1|T1]) :- H > 0, H1 is H, positivos(T,T1), !.

%% - EXERCÍCIO 6
mesmaPosicao(X,L1,L2) :- member(X,L1), member(X,L2), !.
mesmaPosicao(X,[H1|_],[H2|_]) :- X == H1, X == H2.
mesmaPosicao(X,[_|T1],[_|T2]) :- mesmaPosicao(X,T1,T2), !.

%% - EXERCÍCIO 7
intercala(_,[],[]).
intercala(X,[H|T],[H1|T1]) :- H1 = H, a_intercala(X,T,T1), !.

a_intercala(_,[],[]).
a_intercala(X,T,[H1|T1]) :- H1 = X, intercala(X,T,T1), !.

%% - EXERCÍCIO 8
comissao(0,[],[]).
comissao(N,[H|T1],[H|T2]) :- N1 is N-1, comissao(N1, T1, T2).
comissao(N,[_|T1],T2) :- comissao(N,T1,T2), !.

%% EXERCÍCIO 9
azulejos(NA, NQ) :- a_azulejos(NA, Q), length(Q, NQ).

a_azulejos(0,[]).
a_azulejos(NA, [H|T]) :- sqrt(NA, S), floor(S, A), H is A*A, N is NA-H, a_azulejos(N, T), !.
