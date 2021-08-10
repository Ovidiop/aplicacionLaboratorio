<?php
include_once('cnx/conexion.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Aplicacion Laboratorio</title>
</head>
<body>
<h2>Agregar Pacientes</h2>
<form method="post" action="process/pacientes.php" name="form1" enctype="multipart/form-data">
<table border="0">
<tr>
<th>Cedula</th>
<td><input type="text" name="cedula"></td>
</tr>
<tr>
<th>Nombre</th>
<td><input type="text" name="nombre"></td>
</tr>
<tr>
<th>Apellido</th>
<td><input type="text" name="apellido"></td>
</tr>
<tr>
<th>Direccion</th>
<td><textarea type="text" name="direccion"></textarea></td>
</tr>
<tr>
<th>Sexo</th>
<td><input type="text" name="sexo"></td>
</tr>
<tr>
<th>telefonoMovil</th>
<td><input type="text" name="telefonoMovil"></td>
</tr>
</tr>
<th>Correo</th>
<td><input type="mail" name="correo"></td>
</tr>
<th>Edad</th>
<td><input type="text" name="edad"></td>
</tr>
</table>
<br />
<input type="submit" name="nuevo" value="Registrar">
</form>
<br />
<a href="pacientes.php" title="Regresar"><i class="material-icons" style="fontsize:
26px">arrow_back</i></a>
<?php
mysqli_close($con);
?>
</body>
</html>