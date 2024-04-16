<?php
//Linking the configuration file
require 'config.php';
?>


<?php
$name=$_POST['pname'];
$age=$_POST['age'];
$address=$_POST['adr'];
$Email=$_POST['Em'];
$gender=$_POST['gender'];
$desc=$_POST['image'];
$pType=$_POST['payment'];
$pMethod=$_POST['paymentmethod'];

$sql2= "INSERT INTO prescription_details(id,patient_name,patient_age,patient_address,Email,gender,medicine_details,payment,payment_method) VALUES('','$name','$age','$address','$Email','$gender','$desc','$pType','$pMethod')";

if(mysqli_query ($con,$sql)){
    echo "sucess";
}
 else {
 echo "error";
}
 mysqli_close($con);

?>