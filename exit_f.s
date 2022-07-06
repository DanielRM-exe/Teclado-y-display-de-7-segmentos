.globl exit #hacemos pública la función exit 

.include "servicios.s"# incluimos el fichero servicios

.text# segmento de texto (código)

		# función que termina el programa mediante el servicio EXIT
		exit:
			li a7, EXIT
			ecall
			
			ret