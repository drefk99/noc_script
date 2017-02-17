<?php

	//..VARIABLES
	$servidor="127.0.0.1";
	$usuario="root";
	$password="drefsktz";
	$DB="vi_game";

	
	

	//..CONECTANDOSE A MySQL
	$conectado = new mysqli($servidor, $usuario, $password, $DB);

	if ($conectado->connect_errno){
	 echo("PROBLEMAS CON LA DB, CONTACTE A SU ADMINISTRADOR");}
	 else {
	 	echo("Conectado con la DB");
	 }
	
	


?> 	

