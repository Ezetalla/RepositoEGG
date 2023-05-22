///Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
///	hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
	///		función debe devolver el resultado de está validación, para mostrar el mensaje en el
		///	algoritmo. Nota: recordar el uso de las variables de tipo lógico.

Algoritmo vecto7
	definir opc1, opc2, tamanio Como Entero
	escribir "ingrese tamanio de vectores"
	leer tamanio
	dimension opc1(tamanio)
	dimension opc2(tamanio)
		
FinAlgoritmo

subproceso rellenar(opc1, opc2)
	definir i Como Entero
	para i = 0 hasta tamanio
		opc1(i)=Aleatorio(1,10)
		opc2(i)=Aleatorio(1,10)
	FinPara
FinSubProceso

Funcion 
	


