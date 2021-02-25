<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Source & Destionation</title>

</head>
<body background="admbcg.jpg"style="background-size: 100%">
<%@include file="navbar.jsp"%>
<div class="a" style="position:fixed;top:20%;left:15%;transform(-50%,-50%);color:#FFFFFF;font-family: "Lato", sans-serif;" >
<form method="post" action="soudesback.jsp" >
<label for="1" style="color:#FFFFFF;"><h4>Source</h4></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" value="" name="src" required style="color:#000000;"><br><br>
<label for="2" style="color:#FFFFFF;"><h4>Destination</h4></label>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" value="" name="dst" required style="color:#000000;"><br><br>
<center><input type="submit" value="Add" style="background-color:#000000;"></center>
</form>
</div >
<%@include file="sdtable.jsp"%>
</body>
</html>