#! / bin / bash
 
si [ $ #  -eq 3]
entonces 
 
	num_files = $ 2
 
	if [ ` echo $ num_files | grep " ^ [1-9] [0-9] \? $ " ` ]
	entonces 
 
		dirname = $ 1
 
		if [[ ` test -d $ dirname  &&  echo 0 ||  echo 1 `  == 1]]
		entonces 
			mkdir $ dirname 
		fi
 
		chmod u + rw $ dirname 
		nombre basefile = $ 3 

		cd  $ dirname 

		para  i  en  ` SEC 1 1 $ NUM_FILES ` 

		hacer 
			si [ $ i  -lt 10]
			entonces 
				toque $ basefilename " 0 " $ i 
			más 
				toque $ nombrearchivo base $ i 
			fi 
		hecho 

		echo  " Archivo / s creado / s correctamente "
 
	más 
		echo  " El numero ha sido del 1 al 99 " 
	fi 
más 
	echo  " Numero incorrecto de parametros " 
fi