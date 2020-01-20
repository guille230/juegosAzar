Funcion cara <- Cara_Cruz() 
	Definir cara como texto;
	Segun azar(2) Hacer
		0:
			cara="Cara";
		1:
			cara="Cruz";
		
	Fin Segun
FinFuncion

Funcion n <- leerapuesta 
	definir n como entero;
	escribir "introduce la apuesta";
	leer n;
FinFuncion

Funcion coin <-apuesta_Cara()
	Definir toss Como Entero;
	Definir coin como texto;
	Escribir "Elije 1-cara o 2-cruz";
	leer toss;
	Segun toss Hacer
		1:
			coin= "Cara";
		2:
			coin = "Cruz";
		
	Fin Segun
FinFuncion

	
	
	



Algoritmo  Ludopatia
	Definir dinero, apuesta Como Entero;
	Definir option, t2, t1 como texto;
	dinero = 100;
	Repetir
		Escribir "Tienes " dinero "€";
		Escribir "Cuanto quieres apostar?";
		apuesta <- leerapuesta;
		Si apuesta < 20 Entonces
			Escribir "Apuesta por lo menos 20€";
		SiNo
			t1 <-Cara_Cruz();
			t2 <- apuesta_Cara();
			si t1 == t2 Entonces
				Escribir "Felicidades, te doblo lo apostado ha salido " t1 " y tu apostaste " t2;
				dinero = dinero + (apuesta * 2);
			SiNo
				Escribir "Lo siento has perdido has apostado ha salido " t1 " y tu apostaste " t2;
				dinero = dinero - apuesta ;
			FinSi
		FinSi
		
		
		
	Hasta Que dinero == 0;
	
FinAlgoritmo

