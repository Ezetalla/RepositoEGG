
Algoritmo vectores6
	/// Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
	/// posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
	/// posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
	/// en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
	/// de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
	
	definir frase como cadena
	definir cantidad,posi Como Entero
	definir vector,carac Como caracter
	
	escribir "ingrese su frase"
	leer frase
	dimension vector(20)
	
	definir i Como entero
		para i = 0 hasta 19 Hacer
		vector(i)=Subcadena(frase,i,i)
		escribir vector(i) Sin Saltar
	FinPara
	
	escribir "ingrese un caracter random y una posicion"
	leer carac
	leer posi
	
		si vector(posi)=" " Entonces
			vector(posi)=carac
			SiNo
			escribir "posicion ocupada"
		FinSi
		para i = 0 hasta 19 Hacer
			escribir vector(i) sin saltar
		FinPara
	
	
	
	
FinAlgoritmo
