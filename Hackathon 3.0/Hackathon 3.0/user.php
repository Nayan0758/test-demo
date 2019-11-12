<?php 
session_start();
$email=$_GET["email"];
$_SESSION["email"]=$email;
$email=$_SESSION["email"];
?>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="index.css" type="text/css">
<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />

<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
</head>
<body>


<header class="myheader">
<h1>Login Successful</h1>
<a href="logout.php">Logout</a>
<div class="container">
<?php
include("config.php");
?>



<div class="menu">
<ul>
<li>

<?php
$email=$_GET["email"];
$_SESSION["email"]=$email; ?>

<?php
$q=mysqli_query($x,"select * from customer where email='$email' ");
if($r=mysqli_fetch_assoc($q))
{

$_SESSION["fname"]=$r["fname"];
echo $_SESSION["fname"];
}

 ?>


</li>

</ul>
</div>

</div>
<div class="clearfix"> </div>
</div>
</header>

</body>
</html>
