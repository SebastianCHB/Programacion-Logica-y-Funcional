/*Logica de primer orden en base de sentencias que se llaman hechos, que son los hechos de la base logica, ej; valioso(oro).
valioso es el hecho, le_gusta(juan,maria). le_gusta es el hecho, tiene(juan,libro).*/

valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
% Diagrama Genealogico
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).
hijo(tomas,isabel).


/* ¿Es ana tia de jaime?*/
/*?- progenitor(X,ana),progenitor(X,Y),progenitor(Y,jaime).
X = jose,
Y = patricia.*/

/*¿Es ana tia de isabel?*/
/*?- progenitor(X,ana),progenitor(X,Y),progenitor(Y,isabel).
false.
*/

/*

*/