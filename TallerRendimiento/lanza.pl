$Path = `pwd`;
chomp($Path);


@Nombre_Ejecutable = ("clasico", "transpuesta");
@Size_Matriz = ("100","200","300","400","800","1000","2000","4000");
@Num_Hilos = (3,5,8);
$Repeticiones = 30;

foreach $nombre (@Nombre_Ejecutable){
	foreach $size (@Size_Matriz){
		foreach $hilo (@Num_Hilos){
			$file = "$Path/$nombre-".$size."-Hilos-".$hilo.".dat";
			for ($i=0; $i<$Repeticiones; $i++) {
				system("$Path/$nombre $size $hilo  >> $file");
				#printf("$Path/$nombre $size $hilo \n");
			}
			close($file);
		}
	}

}	
