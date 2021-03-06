<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}



.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav" >
	
  <a style="cursor:pointer"class="closebtn" onclick="closeNav()">&#10092; </a>
  
  <a href="company.jsp" style='font-size:20px'>AirLineCompanies</a>
  <a href="soudes.jsp" style='font-size:20px'>Source&Destination</a>
  <a href="master.jsp" style='font-size:20px' >MasterList</a>
  <a href="password.jsp" style='font-size:20px'>Change Password</a>
</div>

<span style="font-size:25px;cursor:pointer;color:#FFFFFF;position: fixed;top: 5%;left: 5%;transform: translate(-50%, -50%);"class="fa fa-" onclick="openNav()">&#9776; Menu</span>
<a href="AdminHome.jsp"style="font-size:25px;text-Decoration:none;cursor:pointer;color:#FFFFFF;position: fixed;top: 5%;left: 73%;transform: translate(-50%, -50%);" class="fa fa-home">Home</a>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0px";
}
</script>
   
</body>
</html> 
