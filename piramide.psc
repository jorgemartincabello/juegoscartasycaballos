Algoritmo sin_titulo
	Definir c como caracter;
	Definir n,i,j,z como entero;
	
	escribir " Introduce dimensión de la pirámide";
	leer n;
	escribir " Introduce carácter a utilizar ";
	leer c;
	
	para i<-1 hasta n con paso 1 hacer
		
		para j<-1 hasta n-i con paso 1 hacer
			escribir sin saltar " ";
		FinPara 
		
		para z<-1 hasta i con paso 1 hacer
			
			Escribir sin saltar c;
		Finpara
		Escribir "";
	FinPara
FinAlgoritmo
