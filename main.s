#Programa que lee las teclas de un teclado de 16 teclas hexadecimales (integrado en Digit Lab Sim) y las muestra en el display derecho. 
#Al pulsar una tecla concreta este termina
#Debe tener dos funciones 
#todas las funciones deben estar en ficheros separados, con los nombres que consideres oportunos
#al menos debe leer una fila de teclado.


	.include "servicios.asm"
	
	.text
	
	
	li t0, BASE

bucle:		
	li t3,17
	li t4,33
	li t5,65
	li t6,-127
	 
	li t1, 01
	sb t1, KEY_ENA(t0)
	lb t2, KEY_RD(t0)
	
	beq t2, t3,DISP_0
	beq t2, t4,DISP_1
	beq t2, t5,DISP_2
	beq t2, t6,DISP_3
	
	li t3,18
	li t4,34
	li t5,66
	li t6,-126
	
	li t1, 02
	sb t1, KEY_ENA(t0)
	lb t2, KEY_RD(t0)
	
	beq t2, t3,DISP_4
	beq t2, t4,DISP_5
	beq t2, t5,DISP_6
	beq t2, t6,DISP_7
	
	li t3,20
	li t4,36
	
	
	li t1, 04
	sb t1, KEY_ENA(t0)
	lb t2, KEY_RD(t0)
	
	beq t2, t3,DISP_8
	beq t2, t4,DISP_9
	
	
	
	b bucle
	
DISP_0:	
	
	li t3,DIG_0
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	
	
DISP_1:	
	
	li t3,DIG_1
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	
	
DISP_2:	
	
	li t3,DIG_2
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	
	
DISP_3:	
	
	li t3,DIG_3
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	
	
DISP_4:	
	
	li t3,DIG_4
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	

DISP_5:	
	
	li t3,DIG_5
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	

DISP_6:	
	
	li t3,DIG_6
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
	

DISP_7:	
	
	li t3,DIG_7
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
DISP_8:	
	
	li t3,DIG_8
	sb t3,DISP_R(t0)
	beq t3,t3,bucle
DISP_9:	
	
	li t3,DIG_9
	sb t3,DISP_R(t0)
	beq t3,t3,bucle


	
	
		

		
		
