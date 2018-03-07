#! / bin / bash

es_directorio = ` test -d $ 1  &&  echo  true  ||  echo falso `
es_entero = ` echo $ 2  | grep -q " [0-9] \ + "  &&  echo  true  ||  echo falso `

if [ $ #  -eq 2]
entonces 
	if [ $ es_directorio  ==  " true " ] && [ $ es_entero  ==  " true " ]
	entonces 
		encontrar $ 1 -size - $ 2  > archivosSizN.txt
		echo  " Fichero archivosSizN.txt creado correctamente " 
	más 
		echo  " El directorio no existe o el segundo parámetro no es un entero " 
	fi 
más 
	echo  " Numero incorrecto de parámetros " 
fi