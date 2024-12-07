%1
%casas
inmueble(persona(juan),casa(120),barrio(almagro),150000).
inmueble(persona(fer),casa(110),barrio(flores),60000).

%departamentos
inmueble(persona(nico),dpto(3,2),barrio(almagro),80000).
inmueble(persona(alf),dpto(3,1),barrio(almagro),75000).
inmueble(persona(vale),dpto(4,1),barrio(flores),95000).

%lofts
inmueble(persona(julian),anio(2000),barrio(almagro),140000).

persona(felipe).
persona(rocio).

barrio(almagro).
barrio(flores).

%2
esCopada(inmueble(_,dpto(Amb,Banio),_,_)):-
Amb>3,
Banio>1.

esCopada(inmueble(_,casa(espacio),_,_)):-
espacio>100.

esCopada(inmueble(_,loft(anio),_,_)):-
anio>2015.

barrioCopado(Barrio):-
barrio(Barrio),
forall(inmueble(_,Propiedad,Barrio,_), esCopada(inmueble(_,Propiedad,_,_))).

%3

esBarato(inmueble(_,dpto(Amb,_),_,_)):-
Amb<3.

esBarato(inmueble(_,casa(espacio),_,_)):-
espacio<90.

esBarato(inmueble(_,loft(anio),_,_)):-
anio<2005.

barrioCaro(Barrio):-
    barrio(Barrio),
    forall(inmueble(_,Propiedad,Barrio,_), not(esBarato(inmueble(_,Propiedad,_,_)))).

%4

esSuficiente(PlataDispo,Precio,Resto):-
PlataDispo >= Precio,
Resto is Precio - PlataDispo.

comprarInmueble(PlataDispo,Resto,ListPropiedades):-
findall(inmueble(_,Propiedad,Barrio,Precio),esSuficiente(PlataDispo,Precio,Resto),ListPropiedades).


sublista([],[]).
sublista([_|Cola],Sublista):-sublista(Cola,Sublista).
sublista([Cabeza|Cola],[Cabeza|Sublista]):-sublista(Cola,Sublista).








