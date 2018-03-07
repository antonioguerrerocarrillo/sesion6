#! / bin / bash
 
destino = " CopiasSeguridad " 
si [[ ` test -d $ destino  &&  echo 0 ||  echo 1 `  == 1]]
entonces 
	mkdir $ destino 
fi
 
si [ $ #  -ge 1]
entonces 

	suma = 0 
	para  mí  en  $ @ 

	hacer 
		if [ ` test -e $ i  &&  echo 0 ||  echo 1 `  == 1]
		entonces 
			suma = $ [ $ suma + 1]
		fi 
	hecho

	if [ $ suma  -eq 0]
	entonces 
		tar -cvf " ./ $ destino / copia ` fecha + " % Y% m% d " ` .tar "  $ @ gzip " ./ $ destino / copia ` fecha + " % Y% m% d " ` .tar " 
	más 
		echo  " Alguno de los parametros dados no existe " 
	fi 
más 
	echo  " Numero de paramentros incorrecto " 
fi
