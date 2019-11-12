<?php
include("config.php");
$fname=$_POST["fname"];
$lname=$_POST["lname"];
$email=$_POST["email"];
$password=$_POST["password"];
$mobile=$_POST["mobile"];
$q=mysqli_query($x,"insert into customer(fname,lname,email,password,mobile) values('$fname','$lname','$email','$password','$mobile')");
if($q)
{
header("Location:usignup.php?msg=user Registered");
}
else
header("Location:usignup.php?msg=user not Registered");
?>
