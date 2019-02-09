:-dynamic matriz/3.

matriz([1,2,3],1,3).

longitud([],0).
longitud([_|Cola],Long+1):-
         longitud(Cola,Long).

comparaLong(ListaA,ListaB):-
    longitud(ListaA,X),
    L1 is X,
    longitud(ListaB,Y),
    L2 is Y,
    L1 =:= L2.

sumaLista([],[],[]).
sumaLista([A|ColaA],[B|ColaB],[C|ColaC]):-
         comparaLong(ColaA,ColaB),
         sumaLista(ColaA,ColaB,ColaC),
         C is A + B.

suma([],[],[]).
suma([A|ColaA],[B|ColaB],[C|ColaC]):-
    comparaLong(ColaA,ColaB),
    sumaLista(A,B,C),
    suma(ColaA,ColaB,ColaC).

restaLista([],[],[]).
restaLista([A|ColaA],[B|ColaB],[C|ColaC]):-
         comparaLong(ColaA,ColaB),
         restaLista(ColaA,ColaB,ColaC),
         C is A - B.

resta([],[],[]).
resta([A|ColaA],[B|ColaB],[C|ColaC]):-
    comparaLong(ColaA,ColaB),
    restaLista(A,B,C),
    resta(ColaA,ColaB,ColaC).


listaXelem([],[]).
listaXelem([A|ColaA],[B|ColaB]):-
         write("Entro listaXelem"),nl,
         listaXelem(ColaA,ColaB),
         B = [A].

rellenaLista([],A,B):-
         B=A.
rellenaLista([A|ColaA],[B|ColaB],C):-
         write("Entro rellana"),nl,
         listaXelem(A,X),
         pegaElem([B|ColaB],X,Z),
         rellenaLista(ColaA,Z,C).


pegaElem([],[],[]).
pegaElem([A|ColaA],[B|ColaB],[C|ColaC]):-
         write("pega"),nl,
         pegaElem(ColaA,ColaB,ColaC),
         append(A,B,C).

transpone([A|ColaA],B):-
         write("entro transpone"),nl,
         listaXelem(A,X),
         rellenaLista(ColaA,X,B).

