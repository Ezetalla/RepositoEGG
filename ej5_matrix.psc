//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.

Algoritmo ej5_matrix
	definir matri, palabra Como Caracter
	definir i, j Como Entero
	dimension matri(3,3)
	escribir "ingrese una palabra de 9 caracteres"
	leer palabra
	definir aux Como Entero
	aux=0
	para i = 0 hasta 2 
		para j = 0 hasta 2
			matri(i,j) = subcadena(palabra, aux, aux)
			aux=aux+1
		FinPara
	FinPara
	
	para i=0 hasta 2 con paso 1 hacer
		
		para j=0 hasta 2 con paso 1 Hacer
			escribir "[" matri(i,j) "]" sin saltar
			
		FinPara
		escribir " "
	FinPara
	
			
	
FinAlgoritmo
