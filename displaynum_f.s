.globl displaynum #hacemos pública la función displaynum

.include "servicios.s" #incluimos el fichero servicios

.text #segmento de texto( código)

	#Función que en función del parámetro que entra por a3 , el cual es el dígito a mostrat, muestra el dígito en el display de 7 segmentos derecho

	#por último vuelve a la instrucción inmediantamente posterior a su llamada
	displaynum:	
	
		sb a3,DISP_R(t0)
	
		ret
