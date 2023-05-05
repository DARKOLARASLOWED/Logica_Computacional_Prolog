% Plano cartesiano
punto_plano :- write("Cuadrantes en el plano Cartesiano"),nl,
		tab(5),write("        ^           "),nl,
		tab(3),write("  II      |      I    "),nl,  
		tab(3),write("          |           "),nl,
		tab(0),write("< - - - - O - - - - >"),nl,
		tab(3),write("          |            "),nl,  
		tab(3),write("  III     |    IV  "),nl,
		tab(6),write("       v      "),nl,nl,
		write("Ingrese el valor de x "),nl,
		read(X),
		write("Ingrese el valor de y "),nl,
		read(Y),
		pc(X,Y).
		
		pc(X,Y) :- X =:= 0, Y =:= 0, write("El punto se encuentra el punto en el origen").
		pc(X,Y) :- X =\= 0, Y =:= 0, write("El punto se encuentra en el eje X").
		pc(X,Y) :- Y =\= 0, X =:= 0, write("El punto se encuentra en el eje Y").
		pc(X,Y) :- X > 0, Y > 0, write("Se encuentra el punto en cuadrante I ").
		pc(X,Y) :- X < 0, Y > 0, write("Se encuentra el punto en cuadrante II ").
		pc(X,Y) :- X < 0, Y < 0, write("Se encuentra el punto en cuadrante III ").
		pc(X,Y) :- X > 0, Y < 0, write("Se encuentra el punto en cuadrante IV ").
		