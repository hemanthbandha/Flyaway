<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<script type="javascript">

</script>
<style>
	body{
	position: fixed;
 	top: 50%;
 	left: 20%;
 	transform: translate(-50%, -50%);
}
.box {
  border: 1px solid #fff;
  padding: 10px;
  width: 200px;
  background-color: #fff;
  opacity: 0.7;
}
.logo img{
	width: 90px;
	height:auto;
	top: 22%;
 	left: 17%;
	position:fixed;
}
	
</style>
<title>Flyaway</title>
</head>
<body class="bcg" background="bcg.jpg"style="background-size: 100%">
<div class="logo">
<img src="logo.png">
</div>
<body>
<div class="box">

   <h2 id="yui_3_17_2_1_1613099207781_27">&nbsp&nbsp&nbsp&nbspWelcome Back!</h2>
                <hr align="left",border-width:1;color:gray;>
     
<form method="post" name="myForm" action="IndexBack.jsp">
<br>
&nbsp&nbsp&nbsp&nbsp<b>Username</b><br>&nbsp&nbsp&nbsp&nbsp<input type="text" id=1 required="" name="usr"><br><br>
&nbsp&nbsp&nbsp&nbsp<b>Password</b><br>&nbsp&nbsp&nbsp&nbsp<input type="password" id=1 name="pass" required=""><br><br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="Submit" value="Login" style="font-size:10pt;">
</form>
</div>
</body>
</html>