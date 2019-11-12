<html>
<head>
<style>
.container
{
width:1360px;
height:768px;
background:url(pictures/signin.jpeg);}
.container1 {
    width: 981px;
    height: 471px;
    background: #ffffff;
    border-radius: 12px;
    margin: auto;
    margin-left: 184px;
    margin-top: 106px;
    position: absolute;
}
.container2 {
    width: 400px;
    height: 150px;
    margin: auto;
    margin-left: 527px;
    margin-top: 194px;
	box-shadow:6px 6px 10px 2px transparent;
	-webkit-box-shadow:4px 4px 10px 2px transparent;
	}

	h1 {
    color: #009999;
    margin-left: 612px;
    position: absolute;
    margin-top: 100px;
}
body
{
margin:0 auto;
padding:0px;}
.m2 {
    width: 287px;
    border-radius: 19px;
    padding: 12px;
    margin-top: 10px;
    margin-left: 50px;
}
.m3 {
    width: 283px;
    padding: 11px;
    border-radius: 11px;
    margin-top: 15px;
    margin-left: 49px;
    background-color: #009999;
}
.sign
{
	width:200px;
	height:30px;
	margin-top: 37px;
	margin-left: 96px;
	text-decoration:none;
	position:absolute;
}
</style>
</head>
<body>

<div class="container">


<div class="container1">
<img src="pictures/login.jpg" style="
    margin-top: 55px;
    position:  absolute;
">
<h1>Member Login</h1>
<div class="container2">


<form action="userlogin.php" >
<input type="email" name="email" placeholder="Enter Email" class="m2" />
<br>
<input type="password" name="password" placeholder="Enter Password" class="m2" />
<br>
<input type="submit" value="Login" class="m3" />
<p class="sign">Don't have an account <a href="usignup.php" class="p1">Sign&nbsp;up</a></p>
</form>
</div>
</div>
</div>
</body>
</html>