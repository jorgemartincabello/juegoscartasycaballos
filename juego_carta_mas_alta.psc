funcion num<-numcarta()
	definir  num como texto;
	segun azar(13)+1;
		1: num<-"AS";
		2: num<-"Dos";
		3: num<-"Tres";
		4: num<-"Cuatro";
		5: num<-"Cinco";
		6: num<-"seis";
		7: num<-"Siete";
		8: num<-"Ocho";
		9: num<-"Nueve";
		10: num<-"Diez";
		11: num="J";
		12: num<-"Q";
		13: num<-"K";
	FinSegun
FinFuncion

funcion palo<-palocarta()
	definir  palo como texto;
	segun azar(4)+1;
		1: palo<-"Corazones";
		2: palo<-"Picas";
		3: palo<-"Treboles";
		4: palo<-"Rombos";
		
	FinSegun
FinFuncion

funcion apuesta<-apuestaeuros(limite)
	definir apuesta, ap como entero;
	escribir " Jugamos.. ganas o pierdes la cantida apostada....";
	repetir 
		escribir "Tienes " limite " euros para apostar, introduce tu apuesta (mínimo 50 euros)";
		leer ap;
		si ap<=limite y ap>=50 entonces
			apuesta<-ap;
		sino 
			si ap<50 entonces
				Escribir "Apuesta no es válida, es menor de 50 euros... apuesta otra vez";
			sino
				Escribir "Apuesta no es válida, es mayor de lo que dispones ... apuesta otra vez";
			FinSi
		FinSi
	hasta que ap>=50 y ap<=limite;
FinFuncion

funcion apc<-apuestacartas(nc1, pc1, nc2, pc2)
	definir apc como entero;
	escribir " Sacamos la primera carta....";
	esperar 3 segundos;
	escribir nc1 " de " pc1 ;
	escribir " apuesta la siguiente carta ... 1. Mayor  2. Menor";
	leer apc;
	escribir " Sacamos la siguiente carta....";
	esperar 3 segundos;
	escribir nc2 " de " pc2 ;
	
FinFuncion

funcion ndisponible<-comprueba(ap,ncarta1, ncarta2,disponible, apuesta)
	definir ndisponible como numero;
	segun ap Hacer
		
		1: 
			Si ncarta2>ncarta1 entonces
				ndisponible<-disponible+apuesta;
				escribir " Enhorabuena.... has ganado " apuestadinero " euros.. ... ";
			SiNo
				si ncarta1=ncarta2 Entonces
					escribir " los números de las dos cartas son iguales..partida nula";	
					ndisponible<-disponible;
				sino	
					escribir " Lo siento .... has perdido " apuestadinero " euros.. ... ";
				FinSi
				disponible<-disponible-apuesta;
			FinSi
			
		2:  si  ncarta2<nacta1 entonces
				escribir " Enhorabuena.... has ganado " apuestadinero " euros.. ... ";
			SiNo
				si ncarta1=ncarta2 Entonces
					escribir " los números de las dos cartas son iguales..partida nula";	
					ndisponible<-disponible;
				sino	
					escribir " Lo siento .... has perdido " apuestadinero " euros.. ... ";
				FinSi
				disponible<-disponible-apuesta;
			FinSi
				
	FinSegun
	
FinFuncion

Algoritmo carta_mas_alta
	definir disponible, ap como entero;
	definir apuesta como entero;
	definir ncarta1, ncarta2,pcarta1, pcarta2, r como texto;
	definir salir como logico;
	salir<-falso;
	disponible = 1000;
	Escribir " Bienvenido al juego de la carta más alta tienes 1000 euros para jugar.. SUERTE!!!";
	
	//apuesta<-apuestaeuros(disponible);
	ncarta1<-numcarta();
	pcarta1<-palocarta();
	ncarta2<-numcarta();
	pcarta2<-palocarta();
	escribir ncarta1 " ", pcarta1, " " ncarta2 " ", pcarta2;
	//ap<-apuestacartas(ncarta1, pcarta1, ncarta2, pcarta2);
	//disponible<-comprueba(ap,ncarta1, ncarta2,disponible,apuesta);

	
	
FinAlgoritmo
