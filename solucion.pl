
inmueble(persona(juan),casa(120),barrio(almagro)).
inmueble(persona(fer),casa(110),barrio(flores)).



inmueble(persona(nico),dpto(3,2),barrio(almagro)).
inmueble(persona(alf),dpto(3,1),barrio(almagro)).
inmueble(persona(vale),dpto(4,1),barrio(flores)).


inmueble(persona(julian),anio(2000),barrio(almagro)).

persona(felipe).
persona(rocio).

barrio(almagro).
barrio(flores).


propiedadCopada(Casa):-
inmueble(_,espacio,_),
espacio>100.

departamentoCopado(dep):-
casa(_,Ambientes,Banios,_),
Ambientes>3,
Banios>1.

loftCopado(loft):-
casa(_,anio,_),
anio>2015.

barrioCopado(Barrio):-
barrio(Barrio),
forall((casa(_,_,Barrio)),propiedadCopada).
%%falta


casaBarata(Casa):-


