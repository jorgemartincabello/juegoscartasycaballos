
funcion figura<-numcarta(num)
	definir  figura como texto;
	segun num hacer
		1: figura<-"el AS";
		2: figura<-"el Dos";
		3: figura<-"el Tres";
		4: figura<-"el Cuatro";
		5: figura<-"el Cinco";
		6: figura<-"el Seis";
		7: figura<-"el Siete";
		8: figura<-"el Ocho";
		9: figura<-"el Nueve";
		10: figura<-"el Diez";
		11: figura="la Jota";
		12: figura<-"la Reina";
		13: figura<-"el Rey";
	FinSegun
FinFuncion

funcion palo<-palocarta(num)
	definir  palo como texto;
	segun num hacer
		1: palo<-" de Corazones";
		2: palo<-" de Picas";
		3: palo<-" de Treboles";
		4: palo<-" de Rombos";
			
	FinSegun
FinFuncion


funcion muestra_saldo(dinero)
	escribir "Tu saldo es de " dinero " euros ";
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

funcion m<-apuesta_mayormenor()
	definir m como entero;
	escribir " Elige si la siguiente carata es  1.Mayor ó  2.Menor";
	leer m;
	
FinFuncion


funcion finalizar<-pregunta_finalizar()
	definir finalizar como logico;
	definir r como texto;
	escribir " pulsa s para salir o cualquier tecla para jugar de nuevo";
	leer r;
	finalizar = falso;
	si r=="s" o r=="S" entonces
		finalizar<-verdadero;
	FinSi
FinFuncion

funcion nsaldo<-comprueba(nc1, nc2, apmm, apdinero, s) 
	definir nsaldo como entero;
	
	escribir nc1, nc2, apmm, apdinero, s;
	
	si nc1<nc2 Entonces
		si apmm==1 Entonces
			Escribir " Acertaste.... enhorabuena ganas " apuestadinero " euros";
			nsaldo=s+apdinero;
		sino
			escribir " Lo sentimos.. has perdido tu apuesta...";
			nsaldo=s-apdinero;
		FinSi
	
	FinSi

	si nc1>nc2 Entonces
		si apmm==2 Entonces
			Escribir " Acertaste.... enhorabuena ganas " apuestadinero " euros";
			nsaldo=s+apdinero;
		SiNo
			escribir " Lo sentimos.. has perdido tu apuesta...";
			nsaldo=s-apdinero;
		FinSi
	FinSi
	
finfuncion

Algoritmo saca_carta
	definir salir como logico;
	definir ncarta1, pcarta1,ncarta2, pcarta2, apuesta, saldo,apuestadinero, apuestamm como entero;
	definir r como caracter;
	salir= falso;
	saldo<-500;
	muestra_saldo(saldo);
	escribir " Juego de la carta mas alta";
	escribir "------------------------------------------";
	escribir "";
	repetir
		
		apuestadinero<-apuestaeuros(saldo);
		
		ncarta1<-azar(13)+1;
		pcarta1<-azar(4)+1;
		escribir " Sacamos la primera carta .....";
		esperar 3 segundos;
		escribir numcarta(ncarta1) palocarta(pcarta1);
		
		apuestamm<-apuesta_mayormenor();
		
		ncarta2<-azar(13)+1;
		pcarta2<-azar(4)+1;
		escribir " Sacamos la segunda carta .....";
		esperar 3 segundos;
		escribir numcarta(ncarta2) palocarta(pcarta2);
		
		saldo<-comprueba(ncarta1, ncarta2, apuestamm, apuestadinero, saldo);
	
		
		muestra_saldo(saldo);
		
		si saldo<50
			salir=verdadero;
			escribir " Hasta luego perdedor...... no tienes dinero para seguir jugando";
		SiNo
			salir<-pregunta_finalizar();
			limpiar pantalla;
		FinSi
		
    hasta que salir
	Escribir "Hasta la próxima ejecución....";
FinAlgoritmo
