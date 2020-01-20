funcion cara<-moneda()
	definir tirada como entero;
	definir cara como texto;
	tirada<-azar(2);
	segun tirada
		0: cara="cruz";
		1: cara="cara";
	FinSegun
FinFuncion

funcion apuesta<-apuestaeuros(limite)
	definir apuesta, ap como entero;
	escribir " Jugamos.. ganas o pierdes la cantida apostada....";
	repetir 
		escribir "Tienes " limite " euros para apostar, introduce tu apuesta (mínimo 20 euros)";
		leer ap;
		si ap<=limite y ap>=20 entonces
			apuesta<-ap;
		sino 
			si ap<20 entonces
				Escribir "Apuesta no es válida, es menor de 20 euros... apuesta otra vez";
			sino
				Escribir "Apuesta no es válida, es mayor de lo que dispones ... apuesta otra vez";
			FinSi
			
		FinSi
	hasta que ap>=20 y ap<=limite;
FinFuncion

funcion ac<-apuestacara()
	definir ac como texto;
	definir c como entero;
	escribir "Apuesta.... cara o cruz : ";
	escribir " 1. cara";
	escribir " 2. cruz";
	leer c;
	segun c
		1: ac<-"cara";
		2: ac<-"cruz";
	FinSegun
FinFuncion


Algoritmo juego_moneda
	definir disponible como entero;
	definir apuestadinero como entero;
	definir tirada, apcara, r como texto;
	definir salir como logico;
	salir<-falso;
	disponible = 100;
	Escribir " Bienvenido al juego de cara/cruz.. tienes 100 euros para jugar.. SUERTE!!!";
	
	repetir
		
		apuestadinero<-apuestaeuros(disponible);
		tirada<-moneda();
		apcara<-apuestacara();
		si tirada=apcara entonces
			escribir " enhorabuena.... has ganado " apuestadinero " euros.. ha salido " tirada;
			disponible<-disponible+apuestadinero;
		sino 
			escribir " lo siento has perdido tu dinero.. ha salido " tirada;
			disponible<-disponible-apuestadinero;
		FinSi
		
		si disponible<20 entonces 
			salir <- verdadero;
			escribir" lo siento pero no tienes dinero para seguir jugando.. hasta otra perdedor...";
		sino 
			escribir " Tu saldo es de: " disponible " euros";
			escribir " Quieres jugar otra vez? s/n";
			leer r;
			si r="n" o r="N" entonces
			salir <- verdadero;	
			escribir " Gracias por jugar ....hasta otra partida..";
			FinSi
		FinSi
		
	hasta que salir
	
	
FinAlgoritmo