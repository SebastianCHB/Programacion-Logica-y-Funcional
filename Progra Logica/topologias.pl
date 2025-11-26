% base de factos
pertenece(router, red_uno, red_dos).

pertenece(red_uno, pc_uno).
pertenece(red_uno, pc_dos).
pertenece(red_uno, pc_tres).
pertenece(red_uno, pc_cuatro).

pertenece(red_dos, pc_cinco).
pertenece(red_dos, pc_seis).
pertenece(red_dos, pc_siete).
pertenece(red_dos, servidor).

% Muestre las PCs de la topología de estrella (red1).
/*
?- pertenece(red_uno,X).
X = pc_uno ;
X = pc_dos ;
X = pc_tres ;
X = pc_cuatro.
*/

% Desarrolle una regla que determine si un dispositivo pertenece a una red.
enred(X,Y) :- pertenece(X,Y).
/*
?- enred(red_uno,pc_uno).
true 
*/

% ¿Puede el S1 enviar ping a la pc2?
    
conectadas(R1, R2) :- pertenece(_, R1, R2).
conectadas(R1, R2) :- pertenece(_, R2, R1).

puedeping(X, Y) :- 
    conectadas(RedA, RedB),
    pertenece(RedA, X),
    pertenece(RedB, Y).

puedeping(X, Y) :-
    pertenece(Red, X),
    pertenece(Red, Y),
    X \= Y.
/*
 puedeping(servidor,pc_dos).
true.
*/

% Invente una regla.
calcular_costo(Origen, Destino, Costo) :-
    pertenece(RedA, Origen),
    pertenece(RedB, Destino),
    ( RedA == RedB -> Costo = 0 ; Costo = 100 ).
/*
0 si es local y 100 si es remoto

- calcular_costo(pc_uno,pc_dos,C).
C = 0.

*/

% Invente una regla que utilice una expresión aritmética.
velocidad(Mb,Pc, R) :- 
    R is Mb/Pc.

% Invente una regla que utilice un comparador.
comparar_red(Disp1, Disp2, Resultado) :-
    pertenece(Red1, Disp1),   
    pertenece(Red2, Disp2), 
    ( Red1 == Red2 -> Resultado = 'Estan en la misma red';   
      Resultado = 'Son redes diferentes'                    
    ).
/*
?- comparar_red(pc_uno,pc_dos,R).
R = 'Estan en la misma red'.

?- comparar_red(pc_uno,pc_cinco,R).
R = 'Son redes diferentes'
*/