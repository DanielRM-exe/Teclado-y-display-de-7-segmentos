#Programa que lee las teclas de un teclado de 16 teclas hexadecimales (integrado en Digit Lab Sim) y las muestra en el display derecho. 
#Al pulsar una tecla concreta este termina
#Debe tener dos funciones 
#todas las funciones deben estar en ficheros separados, con los nombres que consideres oportunos
#al menos debe leer una fila de teclado.


	.include "servicios.asm"
	
	.text
	
	
	li t0, BASE

bucle:		
	
	li t1, 01
	sb t1, KEY_ENA(t0)
	
	
	lb t2, KEY_RD(t0)
	
	b bucle
	
		

		
		