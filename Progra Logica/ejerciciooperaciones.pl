
/*Construir expresiones*/

suma(X,Y, R) :- R is X + Y.
/*
suma(10,10,R).
R = 20.
*/

resta(X,Y, R) :- R is X - Y.
/*
resta(10,10,R).
R = 0.
*/

multiplicacion(X,Y, R) :- R is X * Y.
/*
multiplicacion(10,10,R).
R = 100.
*/

division(X,Y, R) :- R is X/Y.
/*
division(10,10,R).
R = 1.
*/

divreal(X,Y, R) :- R is X div Y.
/*
divreal(10,5,R).
R = 2.
*/

modular(X,Y, R) :- R is X mod Y.
/*ç
modular(10,5,R).
R = 0.
*/

elevado(X, Y, R) :- R is X^Y.
/*
elevado(10,5,R).
R = 100000.
*/

negacion(X, R) :- R is -X.
/*
negacion(10,R).
R = -10.
*/

absoluto(X, R) :- R is abs(X).
/*
absoluto(-10,R).
R = 10.
*/

acoseno(X, R) :- R is acos(X).
/*
acoseno(0.5,R).
R = 1.0471975511965979.
*/

aseno(X, R) :- R is asin(X).
/*
aseno(0.5,R).
R = 0.5235987755982989.
*/

atan(X, R) :- R is atan(X).
/*
atan(0.5,R).
R = 0.4636476090008061
*/

coseno(X, R) :- R is cos(X).
/*
coseno(0.5,R).
R = 0.8775825618903728.
*/

expo(X, R) :- R is exp(X).
/*
expo(0.5,R).
R = 1.6487212707001282.
*/

logn(X, R) :- R is log(X)/log(2).
/*
logn(0.5,R).
R = -1.0.
*/

logb(X, R) :- R is log(X).
/*
logb(0.5,R).
R = -0.6931471805599453.
*/

seno(X, R) :- R is sin(X).
/*
seno(0.5,R).
R = 0.479425538604203.
*/

raiz(X, R) :- R is sqrt(X).
/*
raiz(0.5,R).
R = 0.7071067811865476.
*/

tangente(X, R) :- R is tan(X).
/*
tangente(0.5,R).
R = 0.5463024898437905.
*/

redondeo(X, R) :- R is round(X).    
/*
redondeo(10.5,R).
R = 11.
*/

% Comparaciónes

menor(X,Y) :- X<Y.  
/*
menor(10,5).
false.
*/

menorigual(X,Y) :- X=<Y.
/*
menorigual(10,10).
true.
*/

mayorigual(X,Y) :- X>=Y. 
/*
mayorigual(10,10).
true.
*/

mayor(X,Y) :- X>Y. 
/*
mayor(10,20).
false.
*/

igual(X,Y) :- X=Y. 
/*
igual(10,10).
true.
*/

diferente(X,Y) :- X\=Y. 
/*
diferente(10,10).
false.
*/


% EXPRESIONES

igualdadestricta(X,Y) :- X==Y. 
/*
igualdadestricta(10,10).
true.
*/

distinta(X,Y) :- X\==Y.
/*
distinta(10,10).
false.
*/

menorque(X,Y) :- X@<Y.
/*
menorque(4,10).
true.
*/

mayorque(X,Y) :- X@>Y.
/*
 mayorque(4,10).
false.
*/

menorigualque(X,Y) :- X@=<Y.
/*
menorigualque(10,10).
true.
*/

mayorigualque(X,Y) :- X@>=Y.
/*
mayorigualque(10,10).
true.
*/


