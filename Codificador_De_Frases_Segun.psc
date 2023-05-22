Algoritmo Codificador_De_Frases_Segun
	definir Frase Como Caracter
	escribir"Ingrese la frase a codificar" 
	leer Frase
	Codificar(Frase)
	escribir Frase
	
FinAlgoritmo

SubAlgoritmo Codificar(Frase Por Referencia)
	
	definir i, largofrase  como numero
	definir cadenaauxi Como Caracter
	
	cadenaauxi = ""
	largofrase= Longitud(Frase)
	
	para i=0 hasta largofrase
		
		Segun Subcadena(frase,i,i)
			
			"a":cadenaauxi=Concatenar(cadenaauxi, "@")
				
			"e":cadenaauxi=Concatenar(cadenaauxi, "#")
				
			"i":cadenaauxi=Concatenar(cadenaauxi, "$")
				
			"o":cadenaauxi=Concatenar(cadenaauxi, "%")
				
			"u":cadenaauxi=Concatenar(cadenaauxi, "*")
				
			De Otro Modo:		
				
				cadenaauxi=Concatenar(cadenaauxi, Subcadena(frase,i,i))
		FinSegun
	FinPara
	frase= cadenaauxi
FinSubAlgoritmo
	