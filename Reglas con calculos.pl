% Reglas con operaciones

pedir :- write("area de un circulo"), nl,
		 write("Ingrese el valor del radio: "),
		 read(Radio),
		 circulo(Radio).
		 
circulo(Radio) :- Radio =< 0,
				  write("Valor incorrecto."), nl,
				  pedir.

circulo(Radio) :- Radio > 0, Area is pi * (Radio ^ 2), nl,
		   write("El area de la figura es: "),
		   write(Area).
		   
% Reglas con operaciones trapecio
trapecio :- write("Area de un trapecio"), nl,
			write("Ingrese el valor de la base mayor: "),
			read(Bma),
			write("Ingrese el valor de la base menor: "),
			read(Bme),
			write("Ingrese el valor de la altura: "),
			read(Al),
			a_trapecio(Bma, Bme, Al).
			
a_trapecio(Bma, Bme, Al) :- ((Bma =< 0); (Bme =< 0); (Al =< 0); (Bma =< Bme)),
							write("Valores incorrecto."), nl,
							trapecio.

a_trapecio(Bma, Bme, Al) :- Bma > 0, Bme > 0, Al > 0, Bma > Bme, Area is (Bma + Bme) * Al/2,
							write("El area del trapecio es: "), nl,
							write(Area).
% Reglas con operaciones corona circular

corona :- write("Area de una corona circular"), nl,
		  write("Ingrese el radio menor: "),
		  read(Rme),
		  write("Ingrese el radio mayor: "),
		  read(Rma),
		  a_corona(Rma, Rme).

a_corona(Rma, Rme) :- ((Rma =< Rme); (Rma =< 0); (Rme =< 0)),
					  write("Valores incorrectos."), nl,
					  corona.

a_corona(Rma, Rme) :- Rma > Rme, Rma > 0, Rme > 0, Area is pi * (Rma^2 - Rme^2),
			write("El area de la corona circular es: "),
			write(Area).

% Reglas con operaciones Esfera

esfera :- write("Volumen de una esfera"), nl,
		  write("Ingrese el radio de la esfera: "),
		  read(Radio),
		  vol_esfera(Radio).
		  
vol_esfera(Radio) :- Radio =< 0,
					 write("Valor incorrecto"), nl,
					 esfera.
					 
vol_esfera(Radio) :- Radio > 0, Volumen is (4*pi/3) * (Radio^3),
					 write("El volumen de la esfera es: "),
					 write(Volumen).
% Distancia entre dos puntos

d2p :- write("DIstancia entre dos puntos"),                    
		write("Ingresa el valor de x1: "),
        read(X1),
		write("Ingresa el valor de y1: "),
        read(Y1),
		write("Ingresa el valor de x2: "),
		read(X2),
		write("Ingresa el valor de y2: "),
        read(Y2),
		distancia(X1,X2,Y1,Y2).
distancia(X1,X2,Y1,Y2):- write("d=sqrt((x_2-x_1)^2+(y_2-y_1)^2)"),
        D is sqrt((X2-X1)^2 + (Y2-Y1)^2),                       
		write("La distancia entre estos puntos es: "),
        write(D).
menu :- cls,
		tab(10), write(" **** MENU ****"), nl,
		tab(10), write("1) Area de un circulo "), nl,
		tab(10), write("2) Area de un trapecio "), nl,
		tab(10), write("3) Area de una corona circular "), nl,
		tab(10), write("4) Volumen de una esfera "), nl,
		tab(10), write("5) Distancia entre dos puntos "), nl,
		tab(10), write("6) Ecuacion cuadratica "), nl,
		tab(10), write("0) Salir "), nl,
		tab(10), write("Elegir -> "), read(Op),
		elegir(Op).
elegir(OP) :- (OP =\= 1, OP =\= 2, OP =\= 3, OP =\= 4, OP =\= 5, OP=\= 6, OP =\= 0), 
			write("Opcion incorrecta, Intente nuevamente."), pausa,
			menu.
elegir(OP) :- (OP =:= 1), pedir.
elegir(OP) :- (OP =:= 2), trapecio.
elegir(OP) :- (OP =:= 3), corona.
elegir(OP) :- (OP =:= 4), esfera.
elegir(OP) :- (OP =:= 5), d2p.
elegir(OP) :- (OP =:= 6), ecuacion_cuadratica.
elegir(OP) :- (OP =:= 0), nl, write("Gracias por usar el menu"), nl, write("Adios..").

cls :- write('\33\[2J').

pausa :- nl, tab(10), 
			write("Presione <enter> para continuar"),
			skip(10).
ecuacion_cuadratica :- 	write("Calculo de la formula general"), nl,
						write("ax^2 + bx + c"), nl,
						write("Ingrese el valor de a: "), nl,
						read(Ax),
						write("Ingrese el valor de b: "), nl,
						read(Bx),
						write("Ingrese el valor de c: "), nl,
						read(Cx),
						Dx is (Bx^2) - (4 * Ax * Cx),
						f_g(Ax, Bx, Dx).			
f_g(Ax, Bx, Dx) :- 	Ax =\= 0, Dx < 0, Bx is Bx, 
					write("Su resultado, no se encuentra en los numeros reales").

f_g(Ax, Bx, Dx) :- 	Ax =\= 0, Ds is sqrt(Dx), Dx >= 0, 
					X1 is ((-Bx - Ds) / (2 * Ax)), 
					X2 is ((-Bx + Ds) / (2 * Ax)), 
					write("X1 = "), write(X1), nl,
					write("X2 = "), write(X2).
				
f_g(Ax, Bx, Dx) :- Ax =:= 0, Bx is Bx, Dx is Dx, write("Su resultado es indeterminado.").
