<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/index.css" media="screen">
		<link rel="stylesheet" type="text/css" href="css/nav.css" media="screen">
		<link rel="stylesheet" type="text/css" href="css/modulo.css" media="screen">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	</head>
	<body>
		<div id="cabecera">
			<div id="logo"><a href="index.php"> <img src="Imagenes/fondo.jpg" alt="logo"></a></div>			
		</div><!-- cabecera-->
		<?php

			/*
			Generamos un nuevo documento DOM con las reglas XSLT y otro con los datos XML
			*/
			ini_set('display_errors', '1');
			error_reporting(E_ALL);
			
		    $reglas = new DOMDocument();
		    $reglas->load("xslt/ciclo.xslt");

		    $datos = new DOMDocument();
		    $datos->load("elorrieta_solo_datos.xml");
			/*
			Generamos un "motor" para aplicar esas reglas.
			Le cargamos las reglas de transformación
			Aplicamos dichas reglas al documento
			*/
		   $proc = new XSLTProcessor();
		   $proc->importStylesheet($reglas);
		   $proc->setParameter('','familia',$_GET['id']);
		   echo $proc->transformToXML($datos);

		?>
		<div id="pie">
			<a><i class="fas fa-globe"></i> www.elorrieta.com</a>
			<a><i class="fab fa-twitter"></i> @cifp_eem_lhii</a>
			<a><i class="fab fa-facebook"></i> CIFP Elorrieta - Erreka Mari LHII</a>
			<div class="calidad"><img src="Imagenes/calidad.png" alt="calidad"></div>
		</div><!-- pie-->
	</body>
</html>