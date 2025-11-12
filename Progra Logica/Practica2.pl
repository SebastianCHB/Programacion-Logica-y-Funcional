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
  
  hermano(X, Y, Z) :-
    taxonomia(P, X, _), 
    taxonomia(P, Y, _).

  familia(X, Y) :-
    taxonomia(P, X, subfamilia),
    taxonomia(P, Y, subfamilia).

% 1- Es el gorila descendiente de hominini?
    /*
    taxonomia(gorila,hominini,tribu).
    false.
    */

% 2- ¿Es el Homo hermano del gorila?
/*
    hermano(homo,gorila).
    false.
*/
 
% 3- ¿Son el Homo y el Gorilla de la misma subfamilia?
/*
    
*/

