/*****************************************************************************

		Copyright (c) My Company

 Project:  PRACTICA
 FileName: PRACTICA.PRO
 Purpose: No description
 Written by: David Flores Barbero and Julio García Valdunciel
 Comments:
******************************************************************************/

include "practica.inc"
include "practica.con"
include "hlptopic.con"


domains

	estanteriaID=symbol
	posicionEst=symbol
	posicionCentral=symbol
	producto=symbol
	
	posicion=symbol
	
	cantidad=integer
	distancia=integer

	lineapedido=linea(producto,cantidad)
	lista=lineapedido*
	
	conexion=conex(posicion,posicion)
	listaPosiciones=conexion*
	
	
	
predicates

	/*establecer posiciones de las estanterias*/
	estanteria(estanteriaID,posicion).
	
	/*establecer objetos de las estanterias*/
	ubicacion(producto,posicion,cantidad)
	
	/*establecer las posiciones de los objetos*/
	conectado(posicion,posicion,distancia)

	/*predicado para introducir un pedido*/
	realizarpedido(lista,lista,listaPosiciones,distancia).
	

	busquedaElemento(lineaPedido).
	
	first(linea, symbol).
	

clauses 

	/*establecer posiciones de las estanterias*/
	estanteria(s1,ps1).
	estanteria(s2,ps2).
	estanteria(s3,ps3).
	estanteria(s4,ps4).
	estanteria(s5,ps5).
	estanteria(s6,ps6).
	estanteria(s7,ps7).
	estanteria(s8,ps8).

	/*distancia estanterias pasillo central*/
	conectado(ps1,pc1,5).
	conectado(ps2,pc2,5).
	conectado(ps3,pc3,5).
	conectado(ps4,pc4,5).
	conectado(ps5,pc1,5).
	conectado(ps6,pc2,5).
	conectado(ps7,pc3,5).
	conectado(ps8,pc4,5).
	
	/*distnacia pasillo central*/
	conectado(pcs,pc1,10).
	conectado(pc1,pc2,10).
	conectado(pc2,pc3,10).
	conectado(pc3,pc4,10).
	conectado(pct,pc4,10).

	/* Contenido del almacen */
	ubicacion(patatas,s1,200).
	ubicacion(melones,s1,100).
	ubicacion(boligrafos,s2,500).
	ubicacion(boligrafos,s3,400).
	ubicacion(melocotones,s4,200).
	ubicacion(berzas,s4,100).
	ubicacion(papeles,s5,500).
	ubicacion(boligrafos,s6,400).
	/*ubicacion(patatas,s1,200).
	ubicacion(melones,s1,100).*/
	ubicacion(plumas,s7,500).
	ubicacion(plumas,s8,400).
	ubicacion(colonias,s3,150).
	ubicacion(ratones,s4,210).
	

	realizarPedido(ListaPedido,ListaActual,ListaPosiciones,Distancia):-
		ListaPedido=ListaActual.
		
	realizarPedido(ListaPedido,ListaActual,ListaPosiciones,Distancia):-
		ListaPedido=[ProductoABuscar|Resto],
		busquedaElemento(ProductoABuscar),
		
		ListaActual=[linea(patatas,40)],
		ListaPosiciones=[conex(pc1,pc2)],
		Distancia=5,
		realizarPedido(ListaPedido,ListaActual,ListaPosciones,Distancia).
		
		
	busquedaElemento(Linea):-
		/*Linea=[Producto|Cantidad],*/
		first(Linea, Producto),
		ubicacion(Producto,s4,CantidadActual),
		Cantidad<CantidadActual.
	
	first([X|_], X).
	

goal

	/*pedido a realizar*/
	realizarPedido([linea(patatas,40),linea(plumas,40)],Pedido,Posiciones,DistanciaTotal).
	

	





