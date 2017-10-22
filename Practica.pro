/*****************************************************************************

		Copyright (c) My Company

 Project:  PRACTICA
 FileName: PRACTICA.PRO
 Purpose: No description
 Written by: David Flores Barbero and Julio Garc�a Valdunciel
 Comments:
******************************************************************************/

include "practica.inc"
include "practica.con"
include "hlptopic.con"


domains

	patatas=symbol
	melones=symbol
	boligrafos=symbol
	berzas=symbol
	melocotones=symbol
	ratones=symbol
	colonias=symbol
	plumas=symbol
	papeles=symbol
	cantidad=integer
	
	lineapedido=linea(symbol,symbol)
	lista=lineapedido*
	
	/*estanterias*/
	s1=symbol
	s2=symbol
	s3=symbol
	s4=symbol
	s5=symbol
	s6=symbol
	s7=symbol
	s8=symbol
	
	/*posicion de la estanteria*/
	ps1=symbol
	ps2=symbol
	ps3=symbol
	ps4=symbol
	ps5=symbol
	ps6=symbol
	ps7=symbol
	ps8=symbol

predicates

	/*establecer posiciones de las estanterias*/
	estanteria(symbol,symbol).
	
	/*establecer objetos de las estanterias*/
	ubicacion(symbol,symbol,cantidad)
	
	/*establecer las posiciones de los objetos*/
	conectado(symbol,symbol,integer)

	/*predicado para introducir un pedido*/
	realizarpedido().

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

	/*establecer posiciones conectadas*/
	conectado(ps1,pc1,5).
	conectado(ps2,pc2,5).
	conectado(ps3,pc3,5).
	conectado(ps4,pc4,5).
	conectado(ps5,pc1,5).
	conectado(ps6,pc2,5).
	conectado(ps7,pc3,5).
	conectado(ps8,pc4,5).
	
	/*posicion inicial y final*/
	conectado(pss,pc1,5).
	conectado(pst,pc4,5).

	/* Contenido del almacen */
	ubicacion(patatas,s1,200).
	ubicacion(melones,s1,100).
	ubicacion(boligrafos,s2,500).
	ubicacion(boligrafos,s3,400).
	ubicacion(melocotones,s4,200).
	ubicacion(berzas,s4,100).
	ubicacion(papeles,s5,500).
	ubicacion(boligrafos,s6,400).
	ubicacion(patatas,s1,200).
	ubicacion(melones,s1,100).
	ubicacion(plumas,s7,500).
	ubicacion(plumas,s8,400).
	ubicacion(colonias,s3,150).
	ubicacion(ratones,s4,210).
	


	realizarPedido():-
		write('\n').  
  
    	
goal
	/*pedido a realizar*/
	/*[linea(patatas,40),linea(boligrafos,40),linea(plumas,10)]*/
	realizarPedido().
	

	





