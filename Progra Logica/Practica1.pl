jefe(mark,sheryl).
jefe(sheryl,david).
jefe(sheryl,timothy).
jefe(sheryl,mike).
jefe(sheryl,elliot).
jefe(sheryl,lori).
jefe(elliot,rebecca).
jefe(elliot,heather).

% 1 ¿Quien es el jefe de rebecca?
/*
Ā?- jefe(X,rebecca).
X = elliot.
*/

% 2 ¿Es jefe mark del jefe de rebecca?
/*
?- jefe(Z,X),jefe(X,Y),jefe(Y,rebecca).
Z = mark,
X = sheryl,
Y = elliot ;
false.
*/

% 3 ¿Es Lori jefe de aguien?
/*
฀?- jefe(lori,X).
false.
*/

% 4 ¿Mostrar empleados del jefe de heather?
/*
?- jefe(elliot,X).
X = rebecca ;
X = heather.
*/

% 5 ¿Es timothy jefe de rebecca?
/*
ݞ?- jefe(timothy,rebecca).
false.
*/

% 6 ¿Mostrar compañeros de nivel de mike?
/*
?- jefe(sheryl,X).
X = david ;
X = timothy ;
X = mike ;
X = elliot ;
X = lori.
*/

% 7 ¿Es el jefe de rebecca compañero del nivel de david?
/*
?- jefe(X,rebecca),jefe(Y,X),jefe(Y,david).
X = elliot,
Y = sheryl.
*/

%  ¿Es compañero de nivel mike de lori?
/*
?- jefe(sheryl,X).
X = david ;
X = timothy ;
X = mike ;
X = elliot ;
X = lori.
*/