<?php
    include_once('cnx/conexion.php');
    session_start();
    if(isset($_SESSION['cedula'])){
        $ID = $_SESSION['cedula'];
        $QUERY = "Select * from pacientes Where cedula='$ID'";
        $rsQUERY = mysqli_query($con, $QUERY) or die('Error: ' . mysqli_error($con));
        $countQUERY = mysqli_num_rows($rsQUERY);
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
<h2> Listado de Pacientes </h2>
<table border="1">
<tr>
<th>Cedula</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Direccion</th>
<th>Sexo</th>
<th>telefonoMovil</th>
<th>Correo</th>
<th>Edad</th>
</tr>
<?php
$QUERY = "Select * from pacientes";
$rsQUERY = mysqli_query($con, $QUERY) or die('Error: ' . mysqli_error($con));
while($fileQUERY = mysqli_fetch_array($rsQUERY)){
?>
<tr>
<td><?php echo $fileQUERY['cedula']; ?></td>
<td><?php echo $fileQUERY['nombre']; ?></td>
<td><?php echo $fileQUERY['apellido']; ?></td>
<td><?php echo $fileQUERY['direccion']; ?></td>
<td><?php echo $fileQUERY['sexo']; ?></td>
<td><?php echo $fileQUERY['telefonoMovil']; ?></td>
<td><?php echo $fileQUERY['correo']; ?></td>
<td><?php echo $fileQUERY['edad']; ?></td>
<td>
<a href="modificarpaciente.php?ID=<?php echo $fileQUERY['cedula']; ?>"
title="Modificar"><i class="material-icons" style="font-size:26px">mode_edit</i></a>
<a href="#" title="Eliminar" onClick="eliminar(<?php echo $fileQUERY['cedula']; ?>)"><i
class="material-icons" style="font-size:26px">delete</i></a></td>
</tr>
<?php } ?>
</table>
<?php
mysqli_close($con);
?>
<br />
<a href="registropaciente.php" title="Nuevo Paciente"><i class="material-icons" style="fontsize:
26px">dvr</i></a>
<script>
function eliminar(id){
var id = id;
confirmar = confirm("Deseas Borrar el Registro");
if(confirmar == true) {
url = 'pacientes.php?Cedula='+id+'&borrar=si';
location.href=url;
alert("¡Eliminado!, El registro se eliminó completamente");
return true;
}else{
alert("Cancelado, El registro No se eliminó");
return false;
}
window.refresh();
}
</script>
</body>
</html>