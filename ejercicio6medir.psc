///Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
///letras "M" y "T". Recordar que Pseint le da un valor num�rico a cada letra a trav�s del C�digo
///Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
subproceso medir(letra)
	letra=mayusculas(letra)	
	si letra > "M" y letra < "T" Entonces
		escribir "la letra se encuentra entre m y t"
	sino 
		escribir "la letra no se encuentra entre m y t"
	FinSi
FinSubProceso

Algoritmo ejercicio6subpro
	definir letra Como caracter
	leer letra
	medir(letra)
FinAlgoritmo
