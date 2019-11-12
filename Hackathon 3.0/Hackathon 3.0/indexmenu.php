<?php
include("config.php");
?>



<html>
<head>
<style>
*
{
margin:0px;
padding:0px;}
#container ul
{
list-style:none;

}

.dropdown {
    position: relative;
    display: inline-block;
	
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
	list-style:none;
	
}

/* Links inside the dropdown */


.dropbtn {
    background-color:transparent;
    color: black;
    padding:16px 30px 16px 30px;
    font-size: 18px;
    border: none;
    cursor: pointer;
	width:150px;
	

}
.dropdown:hover .dropdown-content {
    display: block;
	
}

#container ul li
{
background-color:transparent;
width:240px;
height:18px;
line-height:18px;
text-align:center;
font-size:18px;
font-family:Arial, Helvetica, sans-serif;
position:relative;

    
}
#container ul li:hover
{
background-color:#33CCCC;

}
#container ul ul
{
display:none;}
#container ul li:hover> ul
{
display:block;
margin-left:231px;
 position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
	
}
#container ul ul ul
{
margin-left:340px;
top:0px;
position:absolute;}
a:-webkit-any-link {
    text-decoration: none;
color:#000000;
}
</style>
</head>
<body>
<div class="dropdown">

<button class="dropbtn">Category
</button>
<div id="container">
<div class="dropdown-content">

<ul>
<?php

$q=mysqli_query($x,"select * from category");
while(
$r=mysqli_fetch_assoc($q))
{
?>
<li>
<?php echo $r["cname"];?></a>
<?php
$res=mysqli_query($x,"select * from subcat where cname='".$r['cname']."'");
?>
<ul>
<?php
while($r_pro=mysqli_fetch_assoc($res))
{

?>
<li>
<a href="<?php echo $r_pro["menu_link"];?>?sname=<?php echo $r_pro["sname"];?>"><?php echo $r_pro["sname"];?></a>
</li> 
<?php
}
?>
</li>

</ul>
</li>
<?php
}?>

</ul>

</div>
</div>
</div>
</body>

</html>
