<?php
session_start();

include("config.php");
$email=$_GET["email"];
$password=$_GET["password"];

$q=mysqli_query($x,"select * from customer where email='$email' and password='$password'");
if($r=mysqli_fetch_assoc($q))
{
$_SESSION["email"]=$r["email"];
$_SESSION["fname"]=$r["fname"];
header("Location:user.php?email=$r[email]");
}
else
{
header("Location:usignin.php");
echo "user not login";
} 
?>