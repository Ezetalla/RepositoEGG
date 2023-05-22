///Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
///una cadena con un espacio adicional tras cada letra.
///Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
///dicho procedimiento.

SubProceso convertir(par1)
	definir largocadena, aux Como Entero
	aux = 0
	
	para aux=0 hasta longitud(par1)
		escribir Sin Saltar subcadena(par1, aux, aux), " "
	FinPara
	escribir ""
FinSubProceso

Algoritmo ejer5subpro
	
	definir frase Como Cadena
	escribir "ingrese una frase para espaciar"
	leer frase
	convertir(frase)
	
FinAlgoritmo
