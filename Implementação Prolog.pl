progenitor(sara,isaque).
progenitor(abra�o,isaque).
progenitor(abra�o,ismael).
progenitor(isaque,esa�).
progenitor(isaque,jac�).
progenitor(jac�,jos�).

homem(abra�o).
homem(isaque).
homem(ismael).
homem(esa�).
homem(jac�).
homem(jos�).
mulher(sara).

m�e(X,Y):-
    progenitor(X,Y),
    mulher(X).

pai(X,Y):-
    progenitor(X,Y),
    homem(X).

irm�o(X,Y):-
    progenitor(W,X),
    progenitor(W,Y),
    not(X=Y).

dobro(X,Resultado):-
    Resultado is X*2.

