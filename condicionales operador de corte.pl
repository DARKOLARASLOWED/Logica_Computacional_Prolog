% Operador de corte ->
% condicion -> 	accion cuando es verdadera ;
% 				condicion -> accion cuando es falsa ;
% 				cuando no se cumplen las anteriores.

ganados(luis, 4).
ganados(jorge, 3).
ganados(maria, 6).
ganados(esperanza, 7).

gmseis(Persona) :-
    ganados(Persona, NumPartidos),
    NumPartidos < 6,
    write("Ganados: ", NumPartidos).
	
id_num :- 	write("Ingrese el valor a validar como multiplo: "),
			read(X), multiplo3(X).

multiplo3(X) :- (X =:= 0) -> write("Cero no tiene multiplos"), nl ;
				(X mod 3 =:= 0) -> write("Es multiplo de 3"), nl ; write("No es multiplo de 3").

id_num2:- 	write("Ingrese el valor del peso: "), read(Peso),
			write("Ingrese el valor de la altura: "), read(Altura),
			imc(Peso, Altura).

imc(Peso, Altura) :- (Altura < 1 ; Altura > 2.40; Peso < 40; Peso > 300) -> write("Datos o valores invalidos") ;
		(Imx is (Peso / Altura^2), (Imx < 18.5)) -> write("Bajo peso :(") ;
		(Imx is (Peso / Altura^2), (Imx >= 18.5, Imx < 25)) -> write("Peso normal :3 ") ;
		(Imx is (Peso / Altura^2), (Imx >= 25.0, Imx < 27)) -> write("Sobre peso grado I ") ;
		(Imx is (Peso / Altura^2), (Imx >= 27.0, Imx < 30)) -> write("Sobre peso grado II ") ;
		(Imx is (Peso / Altura^2), (Imx >= 30.0, Imx < 35)) -> write("Obesidad tipo I :( ") ;
		(Imx is (Peso / Altura^2), (Imx >= 35.0, Imx < 40)) -> write("Obesidad tipo II :`( ") ;
		(Imx is (Peso / Altura^2), (Imx >= 40.0, Imx < 50)) -> write("Obesidad tipo II :`( ") ;
		write("Obesidad tipo IV :((").
		