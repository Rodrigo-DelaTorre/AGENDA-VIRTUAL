<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<!--<div id="overlay"></div>
<! -- Alerta personalizada -- >
<div id="alertaPersonalizada">
	<p id="mensajeResultado"></p>
	<img id="imagenResultado" src="" />
	<br />
	<button onclick="window.history.back()">Regresar</button>
</div>
<script>
	function mostrarImagenResultado(resultado) {
		let mensaje = document.getElementById("mensajeResultado");
		let imagen = document.getElementById("imagenResultado");
		let alerta = document.getElementById("alertaPersonalizada");
		let overlay = document.getElementById("overlay");

		if (resultado) {
			mensaje.textContent = "Se agregó correctamente.";
			imagen.src = "si.png";
		} else {
			mensaje.textContent = "No se pudo agregar.";
			imagen.src = "no.png";
		}

		alerta.style.display = "block";
		overlay.style.display = "block";
	}
</script>-->
<img id="imagenResultado" src="" style="display:none;" />
<button id="regresa" style="display:none;">Regresar</button>

<script>
	function mostrarImagenResultado(resultado) {
    let imagen = document.getElementById("imagenResultado");
	let boton = document.getElementById("regresa");
    
    // Si el usuario tiene el 60% o más de respuestas correctas, muestra la imagen de aprobado
    if (resultado!=null) {
        imagen.src = "si.png"; 
    } else { // Si no, muestra la imagen de reprobado
        imagen.src = "no.png"; 
    }
    imagen.style.display = "block";
	regresa.style.display = "inline"; // Muestra la imagen final
}
window.onload = function() {
		document.getElementById("regresa").onclick = function() {
			window.history.back(); // Vuelve a la página anterior
		};
	};
</script>
<?php 


$oMysql = new mysqli("localhost", "root", "", "agenda");
 // $conexion = pg_connect("host=localhost port=5432 user=nombreUsuario password=passwordUsuario dbname=nomBD", PGSQL_CONNECT_FORCE_NEW);
// $conexion = pg_connect("host=localhost dbname=BASE_DE_DATOS user=USUARIO password=CONTRASEÑA");		

$Query= "INSERT INTO contactos VALUES ('".$_POST["Nombre"]."','".$_POST["Direccion"]."','".$_POST["Telefono"]."','".$_POST["Email"]."')";
          
		  //$oMysql->query    seria como Objeto.metodo
$Result = $oMysql->query( $Query );  // se lanza la consulta

if ($Result) {
    echo "Se agregó";
    echo "<script>mostrarImagenResultado(true);</script>";
} else {
    echo "No se pudo agregar";	 
    echo "<script>mostrarImagenResultado(false);</script>";
}
   ?>
</body>
</html>
