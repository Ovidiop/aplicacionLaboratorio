<?php
include_once('cnx/conexion.php');
session_start();
if(isset($_SESSION['cedula'])){
$ID = $_SESSION['cedula'];
$QUERY = "Select * from pacientes Where cedula='$ID'";
$rsQUERY = mysqli_query($con, $QUERY) or die('Error: ' . mysqli_error($con));
$countQUERY = mysqli_num_rows($rsQUERY);
}
if(isset($_GET['ID'])){
$cedula = $_GET['ID'];
}else{
header('Location: pacientes.php');
}
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
<h2>Modificar Paciente</h2>
<form method="post" action="process/pacientes.php" name="form1" enctype="multipart/form-data">
<?php
$QUERYmod = "Select * From pacientes Where cedula='$cedula'";
$rsQUERYmod = mysqli_query($con, $QUERYmod) or die('Error: ' . mysqli_error($con));
$fileQUERYmod = mysqli_fetch_array($rsQUERYmod);
?>
<table border="0">
<tr>
<input type="hidden" name="cedula" value="<?php echo $cedula; ?>">
<th>Nombre</th>
<td><input type="text" name="nombre" value="<?php echo $fileQUERYmod['nombre']; ?>"></td>
</tr>
<tr>
<th>Apellido</th>
<td><input type="text" name="apellido" value="<?php echo $fileQUERYmod['apellido']; ?>"></td>
</tr>
<tr>
<th>Direccion</th>
<td><textarea type="text" name="direccion"><?php echo $fileQUERYmod['direccion'];
?></textarea></td>
</tr>
<th>Sexo</th>
<td><input type="text" name="sexo" value="<?php echo $fileQUERYmod['sexo']; ?>"></td>
</tr>
<tr>
<th>telefonoMovil</th>
<td><input type="text" name="telefonoMovil" value="<?php echo
$fileQUERYmod['telefonoMovil']; ?>"></td>
</tr>
</tr>
<th>Correo</th>
<td><input type="mail" name="correo" value="<?php echo $fileQUERYmod['correo']; ?>"></td>
</tr>
<th>Edad</th>
<td><input type="text" name="edad" value="<?php echo $fileQUERYmod['edad']; ?>"></td>
</tr>
</table>
<br />
<input type="submit" name="modificar" value="GUARDAR">
</form>
<br />
<a href="pacientes.php" title="Regresar"><i class="material-icons" style="fontsize:
26px">arrow_back</i></a>
<?php
mysqli_close($con);
?>
</body>
</html>