% Comparar Area de un ciculo
area_circulo(Radio, Area):- Area is pi * Radio ** 2.

comparar_area(Radio, Limite, Resultado):-
    area_circulo(Radio, Area),
    (Area > Limite -> Resultado = 'Mayor';
     Area =:= Limite -> Resultado = 'igual';
     Resultado = 'Menor'
    ).
/*
?- comparar_area(10,5,Resultado).
Resultado = 'Mayor'.

?- comparar_area(10,500,Resultado).
Resultado = 'Menor'.
*/

comparar_perimetro(Lado, Limite, Resultado):-
    Perimetro is Lado * 4,
    (Perimetro > Limite -> Resultado = 'Mayor';
    Perimetro =:= Limite -> Resultado = 'igual';
    Resultado = 'Menor'
    ).
/*
?- comparar_perimetro(5,10,Resultado).
Resultado = 'Mayor'.

?- comparar_perimetro(5,21,Resultado).
Resultado = 'Menor'.
*/

comparar_numero(Valor, Resultado):-
    (Valor = 0 -> Resultado = 'Es Cero';
     Valor > 0 -> Resultado = 'Es Positivo';
     Valor < 0 -> Resultado = 'Es Negativo'
    ).
/*
?- comparar_numero(5,Resultado).
Resultado = 'Es Positivo'.

?- comparar_numero(0,Resultado).
Resultado = 'Es Cero'.

?- comparar_numero(-1,Resultado).
Resultado = 'Es Negativo'.
*/

comparar_raiz(Numero, Limite, Resultado):-
    Raiz is sqrt(Numero),
    (Raiz > Limite -> Resultado = 'Mayor';
    Raiz =:= Limite -> Resultado = 'igual';
    Resultado = 'Menor'
    ).
/*
?- comparar_raiz(4,2,Resultado).
Resultado = igual.
*/
comparar_Area(Base, Altura, Limite, Resultado):-
    Area is (Base * Altura)/2,
    (Area > Limite -> Resultado = 'Mayor';
     Area < Limite -> Resultado = 'Menor';
     Area =:= Limite -> Resultado = 'Igual'
    ).
/*
?- comparar_Area(10,10,50,Resultado).
Resultado = 'Igual'.
*/
verificar_paridad(Numero, Resultado) :-
    (0 =:= Numero mod 2 ->    
        Resultado = 'Par';
        Resultado = 'Impar'    
    ).
/*
?- verificar_paridad(4,Resultado).
Resultado = 'Par'.

?- verificar_paridad(3,Resultado).
Resultado = 'Impar'
*/

comparar_logaritmo(Valor,Limite,Resultado):-
    Log is log(Valor)/log(2),
    (Log > Limite -> Resultado = 'Mayor';
     Log < Limite -> Resultado = 'Menor';
     Log =:= Limite -> Resultado = 'Igual'
    ).
/*
?- comparar_logaritmo(10,10,Resultado).
Resultado = 'Menor'
*/
calcular_potencia(Numero, Potencia, 100, Resultado):-
    Elevado is Numero ^ Potencia,
    (
        Elevado > 100 -> Resultado = 'Mayor';
        Elevado < 100 -> Resultado = 'Menor';
        Elevado =:= 100 -> Resultado = 'Igual'
    ).
    /*
    ?- calcular_potencia(10,10,100,Resultado).
Resultado = 'Mayor'
    */