% creacion de reglas
% identificando el signo
pedir :- write("Ingrese un valor: "),
		 read(X),
		 id_num(X).
id_num(X) :- X =:= 0, write("EL cero no tiene signo").
id_num(X) :- X > 0, X mod 2 =:= 0, write(X), write(" Es positivo y par " ).
id_num(X) :- X < 0, X mod 2 =:= 0, write(X), write(" Es negativo y par " ).
id_num(X) :- X > 0, X mod 2 =\= 0, write(X), write(" Es positivo e impar " ).
id_num(X) :- X < 0, X mod 2 =\= 0, write(X), write(" Es negativo e impar " ).

% identificando cual es el valor mayor

solicita:- write(" Primer valor: "), read(A),
			write(" Segundo valor: "), read(B),
			compara(A,B).
compara(A,B) :- A =:= B, write(" Los numeros son iguales").
compara(A,B) :- A > B, write(" El primer numero es mayor").
compara(A,B) :- A < B, write(" El segundo numero es mayor").