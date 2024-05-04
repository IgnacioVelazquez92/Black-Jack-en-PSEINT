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
	Escribir "`----`  `----´  `----´  `----´";

	Escribir 'Presione una tecla para empezar';
	Esperar Tecla;
	Limpiar Pantalla;
	
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opción:';
		Escribir '  1 - BlackJack';
		Escribir '  2 - Opcion 2';
		Escribir '  3 - Opcion 3';
		Escribir '  4 - Opcion 4';
		Escribir '  5 - Opcion 4';
		Escribir '  6 - Opcion 5';
		Escribir '  7 - Opcion 6';
		Escribir '  8 - Opcion 7';
		Escribir '  9 - Opcion 8';
		Escribir '  0 - Salir';
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
				Escribir 'Funcion 9';
				
			0: EligeSalir<-Verdadero;
			De Otro Modo:
				Escribir 'eleccionción  no válida!';
		FinSegun
	Hasta que EligeSalir
FinProceso


SubProceso menuBlackJack
	Definir EligeSalir Como Logico;
	Definir eleccion Como Numeros;
	Definir baraja, aux1, aux2 Como Caracter;
	Dimension baraja[13,4];
	definir i, j Como Entero;
	
	aux1 <- "A234567890JQK";
	aux2 <- "CDPT";
	
	para i <- 0 Hasta 12 Hacer
		para j <- 0 hasta 3 Hacer
			baraja[i,j] <- Concatenar(Concatenar(Subcadena(aux1,i,i),Subcadena(aux2,j,j)),"V");
			//			Escribir  baraja[i,j];
		FinPara
	FinPara
	
	Limpiar Pantalla;
	
	EligeSalir<-Falso;
	
	Repetir
		Escribir ' ';
		Escribir 'Elija una opción:';
		Escribir '  1 - Jugar';
		Escribir '  2 - Ingresar Dinero';
		Escribir '  3 - Salir';
		Escribir ' ';
		
		Escribir Sin Saltar'Seleccione una opción -';
		Leer eleccion;
		Limpiar Pantalla;
		
		Segun eleccion Hacer
			1: 
				Escribir  "funcion 1";
				PintarCarta(tomarCarta(baraja));
				para i <- 0 Hasta 12 Hacer
					para j <- 0 hasta 3 Hacer
						si Subcadena(baraja[i,j],2,2) = "V" Entonces
							Escribir Sin Saltar baraja[i,j], "    ";
						FinSi
					FinPara
				FinPara
				
			2: 
				Escribir 'Funcion 2';
			3: EligeSalir<-Verdadero;
				
			De Otro Modo:
				Escribir 'eleccionción  no válida!';
		FinSegun
	Hasta que EligeSalir
FinSubProceso

//SubProceso corazon <- EscrituraDeCartaCorazon ( carta )
//	Definir corazon,baraja Como Caracter;
//	Dimension corazon[6];
//	definir i Como Entero;
//	corazon[0] <- " ____ ";
//	corazon[1] <- Concatenar("|",Concatenar(carta,"   |"));
//	corazon[2] <- "|(\/)|";
//	corazon[3] <- "| \/ |";
//	corazon[4] <- Concatenar("|   ",Concatenar(carta,"|"));
//	corazon[5] <- "`----`";
//FinSubProceso

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



Funcion  cartaRetornada <- tomarCarta(baraja por referencia)
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
			
			// marcamos la carta que sale como leída para que no se repita
			baraja[azarValor,azarTipo] <- Concatenar(Subcadena(cartaRetornada,0,1),"F");
		SiNo
			bandera <- falso;
		FinSi
		n <- n+1;
	Hasta Que bandera o n=52
	
FinFuncion




SubProceso  jugarBlackJack(cartaRecibida)
	definir mano , player Como Caracter;
	Dimension mano[11], player[11];
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