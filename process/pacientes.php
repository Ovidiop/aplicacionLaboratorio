<?php
include_once('../cnx/conexion.php');
session_start();
if(isset($_SESSION['cedula'])){
$ID = $_SESSION['cedula'];
$QUERY = "Select * from pacientes Where cedula='$ID'";
$rsQUERY = mysqli_query($con, $QUERY) or die('Error: ' . mysqli_error($con));
$countQUERY = mysqli_num_rows($rsQUERY);
}
if(isset($_POST['nuevo'])){
if($_POST['nuevo'] == 'Registrar'){
$cedula = $_POST['cedula'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$direccion = $_POST['direccion'];
$sexo = $_POST['sexo'];
$telefonoMovil = $_POST['telefonoMovil'];
$correo = $_POST['correo'];
$edad = $_POST['edad'];

$QUERYInt = "Insert Into pacientes (cedula, nombre, apellido, direccion, sexo, telefonoMovil,
correo, edad)";
$QUERYInt .= "values ('$cedula', '$nombre', '$apellido', '$direccion', '$sexo', '$telefonoMovil',
'$correo', '$edad')";
$rsQUERYInt = mysqli_query($con, $QUERYInt) or die('Error: ' . mysqli_error($con));
if($rsQUERYInt == true){
header('Location: pacientes.php');
}
if($rsQUERYInt == false){
echo 'Error no se pudo registrar el usuario';
}

}
}
if(isset($_POST['modificar'])){
if($_POST['modificar'] == 'GUARDAR'){
$cedula = $_POST['cedula'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$direccion = $_POST['direccion'];
$sexo = $_POST['sexo'];
$telefonoMovil = $_POST['telefonoMovil'];
$correo = $_POST['correo'];
$edad = $_POST['edad'];
$query = "Select * from pacientes Where cedula='$usuarioID'";
$rsquery = mysqli_query($con, $query) or die('Error: ' . mysqli_error($con));
$filequery = mysqli_fetch_array($rsquery);
$QUERYmod = "UPDATE pacientes SET cedula='$cedula', nombre='$nombre', apellido='$apellido',
direccion='$direccion', sexo='$sexo', telefonoMovil='$telefonoMovil', correo='$correo',
edad='$edad'";
$QUERYmod .= "WHERE cedula='$cedula'";
$rsQUERYmod = mysqli_query($con, $QUERYmod) or die('Error: ' . mysqli_error($con));
if($rsQUERYmod == true){
header('Location: ../pacientes.php');
}
if($rsQUERYmod == false){
echo 'Error no se pudo Actualizar el usuario';
}
}
}
if(isset($_GET['borrar'])){
if($_GET['borrar'] == 'si'){
$cedula = $_GET['ID'];
$QUERYmod = "DELETE from pacientes WHERE cedula='$cedula'";
//echo $QUERYmod;
$rsQUERYmod = mysqli_query($con, $QUERYmod) or die('Error: ' . mysqli_error($con));
if($rsQUERYmod == true){
header('Location: ../pacientes.php');
}
if($rsQUERYmod == false){
echo 'Error no se pudo Eliminar el usuario';
}
}
}
mysqli_close($con);
?>