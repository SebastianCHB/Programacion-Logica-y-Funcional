 % Hechos 
taxonomia(hominoidea,hominidea, superfamilia).
taxonomia(hominoidea,hylobatidae,superfamilia).

taxonomia(hominidea,homininae,familia).
taxonomia(hominidea,ponginae,familia).
taxonomia(hylobatidae,hylobates,familia).

taxonomia(homininae,hominini,subfamilia).
taxonomia(homininae,gorillini,subfamilia).
taxonomia(ponginae,pongo,subfamilia).

taxonomia(hominini,homo,tribu).
taxonomia(hominini,pan,tribu).
taxonomia(gorillini,gorila,tribu).

taxonomia(homo,human,genus).
taxonomia(pan,bonobo,genus).
taxonomia(pan,chimpanzee,genus).
taxonomia(gorila,gorilla,genus).
taxonomia(pongo,orangutan,genus).
taxonomia(hylobates,gibbon,genus).

% Reglas

padre(P, H):- 
  taxonomia(P, H, _).

descendiente(X, Y):-
  padre(X, Y).

descendiente(X, Y):-
  padre(X, Z),
  descendiente(Z, Y).

hermano(X,Y):-
    padre(Z, X),
    padre(Z, Y),
    X \= Y.

subfamilia(X, Y):-
 descendiente(C, Y),
 descendiente(C, X),
 X \= Y,
 taxonomia(C, _, subfamilia).

familia(X, Y):-
descendiente(C, Y),
descendiente(C, X),
X \= Y,
taxonomia(C, _, familia).



% PREGUNTAS

% 1- Es el gorila descendiente de hominini?
/*
descendiente(hominini,gorila).
false.
*/

% 2- ¿Es el Homo hermano del gorila?
/*
hermano(homo,gorila).
false
*/

% 3- ¿Son el Homo y el Gorilla de la misma subfamilia?
/*
subfamilia(homo,gorila).
true 
*/

% 4- ¿Tiene Hominini la misma familia que Pongo?
/*
familia(hominini,pongo).
true 
*/

% 5- ¿Quiénes son los descendientes directos de una tribu?
/*
taxonomia(_,X,tribu).
X = homo ;
X = pan ;
X = gorila
*/

% 6- ¿Cuál es la superfamilia a la que pertenece Hylobates?
/*
 descendiente(X,hylobates),taxonomia(X,_,superfamilia).
X = hominoidea ;
X = hominoidea ;
*/

% 7- ¿Qué géneros comparten la misma subfamilia con Pan?
/*
subfamilia(pan, X), taxonomia(X, _, genus).
X = homo ;
X = homo ;
X = gorila ;
X = gorila ;
*/

% 8- ¿Cuál es el ancestro común más cercano entre Homo y Gorilla?
/*
?- descendiente(X,homo),descendiente(X,gorila).
X = hominoidea ;
X = hominidea ;
X = homininae ;
*/

% 9. ¿Es el orangután un homínido?
/*
descendiente(hominidea,orangutan).
true 
*/

% 10- ¿Cuáles son todas las especies que pertenecen a la familia Hominidae?
/*

*/