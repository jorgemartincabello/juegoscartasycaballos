
funcion figura<-muestra_figura(n)
	definir figura como texto;
	segun n hacer
		1: figura<-" el As ";
		2: figura<-" el dos ";
		3: figura<-" el tres ";
		4: figura<-" el cuatro ";
		5: figura<-" el cinco ";
		6: figura<-" el seis ";
		7: figura<-" el siete ";
		8: figura<-" el ocho ";
		9: figura<-" el nueve ";
		10: figura<-" la Sota ";
		11: figura<-" el Caballo ";
		12: figura<-" el Rey ";
	FinSegun
FinFuncion

funcion palo<-muestra_palo(n)
	definir palo como texto;
	segun n hacer
		1: palo<- " de Espadas ";
		2: palo<- " de Oros ";
		3: palo<- " de Copas ";
		4: palo<- " de Bastos ";
	FinSegun
	
FinFuncion

funcion apuesta_valida<-apostar_dinero(limite)
	definir apuesta_valida,ap como entero;
	escribir "Tu dinero disponible para jugar es :" limite;
	Repetir
		Escribir " Introduce tu apuesta.. mínimo 50 y máximo " limite;
		leer ap;
		si ap>limite entonces 
			escribir " apuesta no válida , es mayor que tu dinero (" limite ")";
		FinSi
		si ap<50 Entonces
			escribir " apuesta no válida , debe ser mayor o igual que 50";
		FinSi
		si ap>=50 y ap<=limite Entonces
			apuesta_valida<-ap;
		FinSi
	hasta que apuesta_valida=ap
	
FinFuncion

funcion ap<-apostar_mayormenor()
	definir ap como entero;
	escribir " Introduce tu apuesta.. la siguiente carta es:";
	escribir " 1.Mayor";
	escribir " 2.Menor";
	leer ap;
FinFuncion 

funcion ganado<-comprueba_gana(ncarta1, ncarta2, apuesta_mayormenor)
	definir ganado como logico;
	si ncarta1<ncarta2 entonces
		escribir " La segunda carta es mayor que la primera";
		si apuesta_mayormenor=1 entonces 
			ganado <- verdadero;
		SiNo
			ganado <- falso;
		FinSi
	FinSi
	
	si ncarta1>ncarta2 entonces
		escribir " La segunda carta es menor que la segunda";
		si apuesta_mayormenor=1 entonces 
			ganado <- falso;
		SiNo
			ganado <- verdadero;
		FinSi
	FinSi
	
FinFuncion
funcion sale<-salir(dinero)
	definir sale como logico;
	definir jugar como texto;
	si dinero<50 
		sale<-verdadero;
		escribir "... lo sentimos no te queda dinero para jugar.... hasta otra perdedor..";
	SiNo
		escribir " jugar otra vez (s/n)";
		leer jugar;
		si jugar="n" o jugar="N" entonces
			sale<-verdadero;
		SiNo
			limpiar pantalla;
		FinSi
	FinSi
FinFuncion

Algoritmo juego_carta_mas_alta
	
	definir ncarta1, npalo1,ncarta2,npalo2, dinero, apuesta_dinero, apuesta_mayormenor como entero;
	definir gana como logico;
	
	
	dinero<-500;

	escribir " Bienvenido al juego de las cartitassss...";
	escribir "------------------------------------------";
	escribir"";
	
	repetir
		apuesta_dinero<-apostar_dinero(dinero);
		
		ncarta1<-azar(12)+1;
		npalo1<-azar(4)+1;
		escribir " Sacando carta....";
		esperar 1 segundos;
		escribir " la primera carta es" muestra_figura(ncarta1) muestra_palo(npalo1);
		
		apuesta_mayormenor<-apostar_mayormenor();
		
		ncarta2<-azar(12)+1;
		npalo2<-azar(4)+1;
		escribir " Sacando carta....";
		esperar 3 segundos;
		escribir " la segunda carta es" muestra_figura(ncarta2) muestra_palo(npalo2);
		
		
		si ncarta1==ncarta2 entonces
			escribir " ... las dos cartas son de igual rango.. partida nula";
		sino
			gana<-comprueba_gana(ncarta1, ncarta2, apuesta_mayormenor);
			si gana Entonces
				escribir " .... has ganado!!!!!";
				dinero<-dinero+apuesta_dinero;
			sino
				escribir "..oohhhh.. lo sentimos has perdido...";
				dinero<-dinero-apuesta_dinero;
			FinSi
			escribir " Tu dinero ahora es de: " dinero;
		Finsi
		
		
		
	hasta que salir(dinero)
	
	Escribir " Gracias por jugar... hasta otra partida";
	
FinAlgoritmo
