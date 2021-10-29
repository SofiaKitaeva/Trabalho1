progenitor(sara,isaque).
progenitor(abraão,isaque).
progenitor(abraão,ismael).
progenitor(isaque,esaú).
progenitor(isaque,jacó).
progenitor(jacó,josé).

homem(abraão).
homem(isaque).
homem(ismael).
homem(esaú).
homem(jacó).
homem(josé).
mulher(sara).

mãe(X,Y):-
    progenitor(X,Y),
    mulher(X).

pai(X,Y):-
    progenitor(X,Y),
    homem(X).

irmão(X,Y):-
    progenitor(W,X),
    progenitor(W,Y),
    not(X=Y).

dobro(X,Resultado):-
    Resultado is X*2.

