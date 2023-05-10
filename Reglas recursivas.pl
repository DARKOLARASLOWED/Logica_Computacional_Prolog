% Reglas de tipo recursivo
% Tiene que haber caso base con valores iniciales que no se utilicen en la recursividad
% Debe haber actualizacion de parametro para que la recursion sea controlada

datos :-	write("Limite inferior de la lista: "), read(LI),
			write("Limite superior de la lista: "), read(LM),
			lista1(LI, LM).

lista1(LI, LM) :- LI<LM, tab(3), write(LI),
				NewLI is LI+1, lista1(NewLI, LM).
				
				
datos_2 :- write("Multiplos de 5"), nl,
		   write("Ingrese el numero de valores: "), read(N),
		   IT is 1, mu5(N, IT).
		   
mu5(N, IT) :- IT =< N, X is 5*IT, tab(3), write(X),
					 NewIT is IT+1, mu5(N ,NewIT).
					 
	
base_dos :- write("Base dos"), nl,
			write("Ingrese el numero de valores : "), read(N),
			IT is 0, base2(N, IT).
			
base2(N, IT) :- IT < N, X is 2**IT, tab(3), write(X),
					 NewIT is IT+1, base2(N, NewIT).

tabla_up(X, IT, Z) :- IT =< Z, X =\= 0, R is X*IT, 
					write(X), write("*"), write(IT), write("="), write(R), nl,
					NewIT is IT+1,
					tabla_up(X, NewIT, Z).

% Factorial

factorial(0, 1). 
factorial(R, F) :- R>0, R1 is R-1, factorial(R1, F1), F is R*F1.

%  