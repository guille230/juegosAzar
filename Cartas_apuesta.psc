12:17pm
	JavierGmezdeLa1's avatar
	Pigeon McDove @JavierGmezdeLa1
	Funcion palo <- palos( nume1 )
		Definir palo Como Caracter;
		Segun nume1 Hacer
			1:
				palo="Basto";
			2:
				palo="Oro";
			3:
				palo="Espada";
			4:
				palo="Copa";
		Fin Segun
	Fin Funcion
	
	Funcion figura <- carta( nume )
		Definir figura Como Caracter;
		Segun nume Hacer
			1:
				figura="1";
			2:
				figura="2";
			3:
				figura="3";
			4:
				figura="4";
			5:
				figura="5";
			6:
				figura="6";
			7:
				figura="7";
			8:
				figura="8";
			9:
				figura="9";
			10:
				figura="10";
			11:
				figura="11";
			12:
				figura="12";
		Fin Segun
	Fin Funcion
	
	Funcion figura <- carta1 ( nume2 )
		Definir figura Como Caracter;
		Segun nume Hacer
			1:
				figura="1";
			2:
				figura="2";
			3:
				figura="3";
			4:
				figura="4";
			5:
				figura="5";
			6:
				figura="6";
			7:
				figura="7";
			8:
				figura="8";
			9:
				figura="9";
			10:
				figura="10";
			11:
				figura="11";
			12:
				figura="12";
		Fin Segun
	Fin Funcion
	
	Funcion palo <- palos1 ( nume3 )
		Definir palo Como Caracter;
		Segun nume1 Hacer
			1:
				palo="Basto";
			2:
				palo="Oro";
			3:
				palo="Espada";
			4:
				palo="Copa";
		Fin Segun
	Fin Funcion
	
	Funcion n <- apuesta_dinero(dinero)
		definir n como entero;
		Repetir
			escribir "¿Cuanto quieres apostar?";
			leer n;
			Si n<20 Entonces
				Escribir" La apuesta no es válida porque tiene que ser mayor que 20";
			Fin Si
			Si n>dinero Entonces
				Escribir "No puedes apostar mas dinero del que tienes";
			Fin Si
		Hasta Que n>=20 y n<=dinero;
FinFuncion

Algoritmo sin_titulo
	definir dinero, apuesta como Entero;
	definir nume, nume1, nume2, nume3 como Entero;
	definir palo,figura,sal como texto;
	definir salir Como Logico;
	dinero = 100;
	salir=falso;
	Repetir
		Escribir"Vamos a jugar a que carta es mayor. Saca una carta ";
		nume=Azar(13)+1;
		nume1=Azar(4)+1;
		Escribir "la primera carta es " carta(nume) "de" palos(nume1);
		Escribir "Tienes " dinero "€";
		apuesta <- apuesta_dinero(dinero);
		nume2=Azar(13)+1;
		nume3=Azar(4)+1;
		Escribir "la segunda carta es " carta(nume2) "de" palos(nume3);
		si  nume>nume2 Entonces
			Escribir "Felicidades, ha salido " carta(nume2) "de" palos(nume3) " y tu tenías el" carta(nume) " de " palos(nume1) "como es mas grande te doy el doble de tu apuesta";
			dinero = dinero + (apuesta * 2);
		SiNo
			Escribir "Lo siento has perdido ha salido " carta(nume2) "de" palos(nume3) " y tu tenías el" carta(nume) " de " palos(nume1) "como has perdido te quito lo apostado";
			dinero = dinero - apuesta ;
		FinSi
		Si dinero>20 Entonces
			Escribir "¿Quiere seguir jugando? Escribe n si quieres salir o s si queres seguir jugando.";
			Leer sal;
			Si sal="n" Entonces
				salir=verdadero;
			Fin Si
		SiNo
			Escribir"Ea pa tu casa";
		Fin Si
	Hasta Que dinero < 20 o salir=Verdadero;
	
	Escribir "Hasta la próxima";
	
FinAlgoritmo