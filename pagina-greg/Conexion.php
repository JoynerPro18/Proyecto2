<?php
If(!empty($_POST)){
 $serverName = "LAPTOP-JJLP4JP8\SQLEXPRESS\SQLEXPRESS"; //serverName\instanceName
// Puesto que no se han especificado UID ni PWD en el array  $connectionInfo,
// La conexión se intentará utilizando la autenticación Windows.
$connectionInfo = array( "Database"=>"Empresa");
$conn = sqlsrv_connect( $serverName, $connectionInfo);
$Nom=$_POST['id'];
$Ape=$_POST['Identificacion'];
$Dir=$_POST['Nombre'];    
$Cor=$_POST['Apellido'];  
$Tel=$_POST['Email'];   
$Usu=$_POST['Telefono'];  
$Cla=$_POST['Direccion'];
$Act=$_POST['Activo'];
$
$insertar= "INSERT into Usuario(id,Identificacion,Nombre,Apellido,Email,Telefono,Direccion,Activo,EsReclutador,EsEntrevistador)values('$Nom','$Ape','$Dir','$Tel','$Cor','$Usu','$Cla','$Act','$Esrec','$Esent')";      
//Te faltaba esta lineaX
$recurso=sqlsrv_prepare($conn,$insertar); 

//Para mas seguridad usa el valor retornado por sqlsrv_execute

if(sqlsrv_execute($recurso)){
      echo"Agregado correctamente";
        header("location pagina-greg\masterpage2.html");

  
} 
    else{
      echo"No Agregado";
}



}
?>