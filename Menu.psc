SubProceso EscrituraDeCartaCorazon ( carta )
	Definir corazon,baraja Como Caracter;
	Dimension corazon[6];
	definir i Como Entero;
	corazon[0] <- " ____ ";
	corazon[1] <- Concatenar("|",Concatenar(carta,"   |"));
	corazon[2] <- "|(\/)|";
	corazon[3] <- "| \/ |";
	corazon[4] <- Concatenar("|   ",Concatenar(carta,"|"));
	corazon[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir corazon[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaDiamante ( carta )
	Definir diamante,baraja Como Caracter;
	Dimension diamante[6];
	definir i Como Entero;
	diamante[0] <- " ____ ";
	diamante[1] <- Concatenar("|",Concatenar(carta,"   |"));
	diamante[2] <- "| /\ |";
	diamante[3] <- "| \/ |";
	diamante[4] <- Concatenar("|   ",Concatenar(carta,"|"));
	diamante[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir diamante[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaPicas( carta )
	Definir picas,baraja Como Caracter;
	Dimension picas[6];
	definir i Como Entero;
	picas[0] <- " ____ ";
	picas[1] <- Concatenar("|",Concatenar(carta,"   |"));
	picas[2] <- "| /\ |";
	picas[3] <- "|(__)|";
	picas[4] <- Concatenar("| /\",Concatenar(carta,"|"));
	picas[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir picas[i];
	FinPara
FinSubProceso

SubProceso EscrituraDeCartaTrebol( carta )
	Definir trebol,baraja Como Caracter;
	Dimension trebol[6];
	definir i Como Entero;
	trebol[0] <- " ____ ";
	trebol[1] <- Concatenar("|",Concatenar(carta,"   |"));
	trebol[2] <- "| &  |";
	trebol[3] <- "|&|& |";
	trebol[4] <- Concatenar("| | ",Concatenar(carta,"|"));
	trebol[5] <- "`----`";
	
	para i<-0 Hasta 5 Con Paso 1 Hacer
		Escribir trebol[i];
	FinPara
FinSubProceso

Proceso MUENU
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	
	Escribir " _______   __                      __           _____                      __       ";
	Escribir "/       \ /  |                    /  |         /     |                    /  |      ";
	Escribir "$$$$$$$  |$$ |  ______    _______ $$ |   __    $$$$$ |  ______    _______ $$ |   __ ";
	Escribir "$$ |__$$ |$$ | /      \  /       |$$ |  /  |      $$ | /      \  /       |$$ |  /  |";
	Escribir "$$    $$< $$ | $$$$$$  |/$$$$$$$/ $$ |_/$$/  __   $$ | $$$$$$  |/$$$$$$$/ $$ |_/$$/ ";
	Escribir "$$$$$$$  |$$ | /    $$ |$$ |      $$   $$<  /  |  $$ | /    $$ |$$ |      $$   $$<  ";
	Escribir "$$ |__$$ |$$ |/$$$$$$$ |$$ \_____ $$$$$$  \ $$ \__$$ |/$$$$$$$ |$$ \_____ $$$$$$  \ ";
	Escribir "$$    $$/ $$ |$$    $$ |$$       |$$ | $$  |$$    $$/ $$    $$ |$$       |$$ | $$  |";
	Escribir "$$$$$$$/  $$/  $$$$$$$/  $$$$$$$/ $$/   $$/  $$$$$$/   $$$$$$$/  $$$$$$$/ $$/   $$/ ";
	Escribir "                                                                                    ";
	
	Escribir " ____    ____    ____    ____ ";
	Escribir "|A   |  |A   |  |A   |  |A   |";
	Escribir "|(\/)|  | /\ |  | /\ |  | &  |";
	Escribir "| \/ |  | \/ |  |(__)|  |&|& |";
	Escribir "|   A|  |   A|  | /\A|  | | A|";
	Escribir "`----`  `----�  `----�  `----�";

	Escribir 'Presione una tecla para empezar';
	Esperar Tecla;
	Limpiar Pantalla;
	
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opci�n:';
		Escribir '  1 - BlackJack';
		Escribir '  2 - Opcion 2';
		Escribir '  3 - Opcion 3';
		Escribir '  4 - Opcion 4';
		Escribir '  5 - Opcion 4';
		Escribir '  6 - Opcion 5';
		Escribir '  7 - Opcion 6';
		Escribir '  8 - Opcion 7';
		Escribir '  9 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Donde sea apostar -';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				menuBlackJack();
			2: 
				Escribir 'Funcion 2';
			3: 
				Escribir 'Funcion 3';
			4: Escribir'Funcion 4';
			5: Escribir 'Funcion 5';
			6: 
				Escribir 'Funcion 6';
			7: 
				Escribir 'Funcion 7';
			8: 
				Escribir 'Funcion 8';
			9:
				EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'eleccionci�n  no v�lida!';
		FinSegun
	Hasta que EligeSalir
FinProceso

//######################## ..............:::::MENU BlackJack::::::.............######################################

SubProceso menuBlackJack
	Limpiar Pantalla;
	//Opciones de menu
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	//cargamos el mazo
	Definir baraja, aux1, aux2 Como Caracter;
	Dimension baraja[13,4];
	definir i, j Como Entero;
	
	aux1 <- "A234567890JQK";
	aux2 <- "CDPT";
	
	para i <- 0 Hasta 12 Hacer
		para j <- 0 hasta 3 Hacer
			baraja[i,j] <- Concatenar(Concatenar(Subcadena(aux1,i,i),Subcadena(aux2,j,j)),"V");
		FinPara
	FinPara
	
	
	definir plata , ingreso Como Real;
	plata <- 0;
	ingreso<- 0;
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opci�n:';
		Escribir '  1 - Jugar';
		Escribir '  2 - Ingresar Dinero';
		Escribir '  3 - Consultar Saldo';
		Escribir '  4 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Seleccione una opci�n ---';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				si plata > 0 Entonces
					apostar(plata , baraja);
				SiNo
					Escribir "Debe ingresar Dinero para poder apostar :";
				FinSi
				
			2: 
				Repetir
					Escribir "Debe ingresar dinero para poder jugar :";
					leer ingreso;
					plata <- plata + ingreso;
					Limpiar Pantalla;
					si ingreso > 0 Entonces
						Escribir "Felicidades Ingreso $", ingreso ;
						esperar 2 Segundos;
						Limpiar Pantalla;
					FinSi
				Hasta Que plata > 0
				
			3: 
				Escribir "Su saldo es de : ", plata;
			4:
				EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'eleccionci�n  no v�lida!';
		FinSegun
	Hasta que EligeSalir
FinSubProceso

//#############################################....::::Pintar Carta :::::....###########################################################

SubProceso  PintarCarta(cartaRecibida)
	definir palo, valorDeCarta , carta Como Caracter;
	Dimension carta[6];
	definir i, j Como Entero;
	
	valorDeCarta <- Subcadena(cartaRecibida,0,0);
	palo <- Subcadena(cartaRecibida,1,1);
	
	si palo = "C" Entonces
		EscrituraDeCartaCorazon(valorDeCarta);	
	FinSi
 	
	si palo = "D" Entonces
		EscrituraDeCartaDiamante(valorDeCarta);
	FinSi
	si palo = "P" Entonces
		EscrituraDeCartaPicas(valorDeCarta);
	FinSi
	si palo = "T" Entonces
		EscrituraDeCartaTrebol(valorDeCarta);
	FinSi
	
FinSubProceso


//#############################################....::::Devolver una carta al azar :::::....###########################################################
SubProceso cartaRetornada <- tomarCarta(baraja por referencia)
	Definir aux1, aux2 , azarNum , azarTipo, azarValor , cartaRetornada Como Caracter;
	
	definir i, j , n Como Entero;
	definir carta Como Caracter;
	Definir bandera Como Logico;
	n<-0;	
	repetir
		azarTipo <- ConvertirATexto(azar(4));
		azarValor <- ConvertirATexto(azar(13));
		cartaRetornada <- baraja[azarValor,azarTipo];
		
		si Subcadena(cartaRetornada,2,2)="V" Entonces
			bandera <- Verdadero;
			
			cartaRetornada <- baraja[azarValor,azarTipo];
			
			// marcamos la carta que sale como le�da para que no se repita
			baraja[azarValor,azarTipo] <- Concatenar(Subcadena(cartaRetornada,0,1),"F");
		SiNo
			bandera <- falso;
		FinSi
		n <- n+1;
	Hasta Que bandera o n=52
	
FinSubproceso



//#############################################....::::APOSTAR :::::....###########################################################
SubProceso apostar(plata Por Referencia , baraja Por Referencia)
	Limpiar Pantalla;
	Definir apuesta Como Real;
	Repetir
		Escribir "Cuanto dinero desea apostar :";
		leer apuesta;
		Limpiar Pantalla;
		si apuesta> plata Entonces
			Escribir "La apuesta que estas ingresando supera a tu dinero actual -.-*";
			Escribir "Presione una tecla para volver a intentar.";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
	Hasta Que plata > 0 y apuesta < plata
	
	Limpiar Pantalla;
	Escribir  " Repartiendo las cartas espere por favor... ";
	Esperar 3 segundos;
	repartirCartas(plata, apuesta , baraja);
FinSubProceso


//#############################################....::::Repartir Cartas :::::....###########################################################

funcion repartirCartas(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia)
	Limpiar Pantalla;
	Definir  manoJugador , manoCrupier Como Caracter;
	Dimension manojugador[11], manoCrupier[11];
	definir i, j ,valorDeCartaJugador, valorDeCartaCrupier, puntosJugador, puntosCrupier , ciclo Como Entero;
	definir turno Como Logico;
		//	seteamos el puntaje de cartas del jugador y del crupier en 0
		puntosJugador <- 0;
		puntosCrupier <- 0;
		
		// cargamos las manos con un caracter inicial para poder trabajarlas luego
		para i <- 0 Hasta 10 Con Paso 1 Hacer
			manoJugador[i] <- "vacia";
			manoCrupier[i] <- "vacia";
		FinPara
		
		//Cargamos las 2 cartas del jugador
		manoJugador[0] <- tomarCarta(baraja);
		manoJugador[1] <- tomarCarta(baraja);
		
		//seteamos el turno del jugador en 1
		ciclo<- 2;
		
		//Cargamos la mano del crupier
		manoCrupier[0] <- tomarCarta(baraja);

	//	mostramos las cartas del jugador
		mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
		
		mostrarCartasSobreLaMesaDelCrupier(manoCrupier , puntosCrupier);
		
		si puntosJugador = 21 Entonces
			
			Escribir  "GANASTE FELICITACIONES BLACK JACK";
			Escribir  "pulsa una tecla para continuar";
			plata <- plata + apuesta;
			Esperar Tecla;
			limpiar pantalla;
		SiNo
			
			//Turno del jugador
			turno <- Verdadero;
			turnoDelJugador(plata , apuesta, baraja,puntosJugador,puntosCrupier, manoJugador, manoCrupier, ciclo);
			
		FinSi
		
		

	
FinFuncion
//#############################################....::::Mostrar la manos del jugador por pantalla :::::....###########################################################

SubProceso mostrarCartasSobreLaMesaDelJugador(manoJugador Por Referencia , puntosJugador Por Referencia)
	definir i  Como Entero;
	puntosJugador <- 0;
	//	mostramos las cartas del jugador
	Escribir "Tu mano es: ";
	
	para i <- 0 hasta 9 Hacer
		si manoJugador[i] <> "vacia" Entonces
			PintarCarta(manoJugador[i]);
			puntosJugador <- puntosJugador + devolverPuntos(manoJugador[i],puntosJugador);
		FinSi
	FinPara
	escribir "Los puntos del jugador son " , puntosJugador;
	Escribir "";
FinSubProceso
//#############################################....::::Mostrar la manos del jugador por pantalla :::::....###########################################################

SubProceso mostrarCartasSobreLaMesaDelCrupier(manoCrupier Por Referencia , puntosCrupier Por Referencia)
	definir i  Como Entero;
	Escribir "La mano del crupier es: ";
	puntosCrupier <-0;
	para i <- 0 hasta 9 Hacer
		si manoCrupier[i] <> "vacia" Entonces
			PintarCarta(manoCrupier[i]);
			puntosCrupier <- puntosCrupier + devolverPuntos(manoCrupier[i],puntosCrupier);
		FinSi
	FinPara
	escribir "Los puntos del crupier " , puntosCrupier;
FinSubProceso

//#############################################....::::Devuelve los puntos de las cartas :::::....###########################################################
Funcion puntos <- devolverPuntos(carta , puntaje )
	definir puntos Como Entero;
	si Subcadena(carta,0,0) = "J" o Subcadena(carta,0,0) = "Q" o Subcadena(carta,0,0) = "K" o Subcadena(carta,0,0) = "A" o Subcadena(carta,0,0) = "0" Entonces
		si Subcadena(carta,0,0) <> "A" Entonces
			puntos <- 10;
		SiNo
			si puntaje + 11 > 22 Entonces
				puntos <- 1;
			SiNo
				puntos <- 11;
			FinSi
		FinSi
	SiNo
		puntos <- ConvertirANumero(Subcadena(carta,0,0));
	FinSi
FinFuncion


//#############################################....:::Turno del Jugador::::....#################################################
SubProceso turnoDelJugador(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia, puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia, ciclo Por Referencia)
	definir turno Como Logico;
	definir plantarse, perdio Como Logico;
	Definir i , j , eleccion Como Entero;
	plantarse<-Falso;
	perdio <- falso;
	
	
	mientras (!plantarse y !perdio ) hacer

			Escribir ' DINERO DISPONIBLE : $', plata;
			Escribir ' ';
			Escribir 'Elija una opci�n:';
			
			Escribir '  1 - Pedir carta';
			Escribir '  2 - Plantarse';
			
			Escribir Sin Saltar'Seleccione una opci�n ---';
			Leer eleccion;
			Limpiar Pantalla;
			mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
			mostrarCartasSobreLaMesaDelCrupier(manoCrupier  , puntosCrupier);
			Segun eleccion Hacer
				1: 
					manoJugador[ciclo] <- tomarCarta(baraja);
					ciclo <- ciclo +1;
	
					si puntosJugador >21 Entonces
						
						perdio <- Verdadero;
						plata <- plata - apuesta;
						Escribir "PERDIOOOO.. SE PASO!! Toque una tecla para continuar";
						Esperar Tecla;
						Limpiar Pantalla;
					FinSi
				2: 
					plantarse<-Verdadero;
					turnoDelCrupier(plata , apuesta, baraja,puntosJugador,puntosCrupier, manoJugador, manoCrupier);
				De Otro Modo:
					Escribir 'eleccionci�n  no v�lida!';
			FinSegun

	FinMientras
	
FinSubProceso



//#############################################....:::Turno del Crupier::::....#################################################

SubProceso turnoDelCrupier(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia, puntosJugador Por Referencia, puntosCrupier Por Referencia ,manoJugador Por Referencia,manoCrupier Por Referencia)
	definir perdio Como Logico;
	Definir i , j , eleccion , ciclo Como Entero;
	perdio <- falso;
	ciclo <- 1;
	
	mientras (!perdio ) hacer

		Limpiar Pantalla;
		mostrarCartasSobreLaMesaDelJugador(manoJugador, puntosJugador);
		mostrarCartasSobreLaMesaDelCrupier(manoCrupier  , puntosCrupier);
	

		manoCrupier[ciclo] <- tomarCarta(baraja);
		ciclo <- ciclo +1;
		
		si puntosCrupier > 21 Entonces
			perdio <- verdadero;
			Escribir "GANO";
			plata <- plata + apuesta;
		FinSi
		
		si puntosCrupier >= 17 y puntosCrupier < puntosJugador Entonces
			perdio <- verdadero;
			Escribir "GANO";
			plata <- plata + apuesta;
		FinSi
		
		si puntosCrupier >= 17 y puntosCrupier > puntosJugador Entonces
			perdio <- verdadero;
			Escribir "PERDIO";
			plata <- plata - apuesta;
		FinSi
		
		si puntosCrupier = puntosJugador Entonces
			perdio <- verdadero;
			Escribir "EMPATEEEE";
		FinSi
		Escribir "Esperee";
		Escribir "Tomando otra carta el crupier";
		Esperar 3 segundos;
		Limpiar Pantalla;
	FinMientras
FinSubProceso

//#############################################....:::Men� Apuestas::::....#################################################
SubProceso menuApuesta(plata Por Referencia, apuesta Por Referencia, baraja Por Referencia)
	Limpiar Pantalla;
	definir Salir Como Logico;
	Definir i , j , eleccion  Como Entero;
	
	Salir<-Falso;

	Repetir
		Escribir ' DINERO DISPONIBLE : $', plata;
		Escribir ' ';
		Escribir 'Elija una opci�n:';

			Escribir '  1 - Repartir';
			Escribir '  2 - Repasar Reglsd';
			Escribir '  3 - Salir';
			

		Escribir Sin Saltar'Seleccione una opci�n ---';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				repartirCartas(plata , apuesta , baraja);
			2: 
				Escribir "Las reglas son";
			3:
				Salir<-Verdadero;	
			De Otro Modo:
				Escribir 'eleccionci�n  no v�lida!';
		FinSegun
	Hasta que Salir
	
FinSubProceso



//#############################################....:::Control de puntos y acciones::::....#################################################
SubProceso controlGanador (plata Por Referencia, apuesta Por Referencia, puntosJugador Por Referencia , puntosCrupier Por Referencia)
	
		si puntosCrupier < puntosJugador Entonces
			plata <- plata + apuesta;
			Escribir " GANO :) ";
			Esperar 1 segundo;
		FinSi
	
		si puntosCrupier > puntosJugador Entonces
			plata <- plata - apuesta;
			Escribir " PERDIO :( ";
			Esperar 1 segundo;
		FinSi
		
FinSubProceso
	