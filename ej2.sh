#! / bin / bash

es_directorio = ` test -d $ 1  &&  echo  true  ||  echo falso ` 

si [ $ #  -eq 1]
entonces 
	if [ $ es_directorio  ==  " verdadero " ]
	entonces 
		para  mí  en  ` ls $ 1` 
		hacer 
			es_archivo = ` test -f $ i  |  echo  verdadero  ||  echo falso `
			es_enlace = ` test -h $ i  |  echo  verdadero  ||  echo falso ` 
			es_subdirectorio = ` test -d $ i  |  echo  verdadero  ||  echo falso ` 

			if [ $ es_enlace  ==  " verdadero " ]
			entonces 
				echo  " Enlace: $ i "
 
			elif [ $ es_archivo  ==  " verdadero " ]
			entonces 
				echo  " Archivo regular: $ i "
 
			elif [ $ es_subdirectorio  ==  " verdadero " ]
			entonces 
				echo  " Directorio: $ i " 
			fi 
		hecho
 
	más 
		echo  " El directorio no existe " 
	fi 
más 
	echo  " Numero incorrecto de parametros " 
fi