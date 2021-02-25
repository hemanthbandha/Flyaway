<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company</title>

</head>
<body background="admbcg.jpg"style="background-size: 100%">
<%@include file="navbar.jsp"%>
<div class="a" style="position:fixed;top:20%;left:15%;transform(-50%,-50%);color:#FFFFFF;font-family: "Lato", sans-serif;" >
<form method="post" action="companyback.jsp" >
<label style="color:#FFFFFF;">Company Name&nbsp&nbsp</label>
<input type="text" value="" name="comp" required style="color:#000000;"><br><br>
<center><input type="submit"  value="Add" style="background-color:#000000;width:60px;"></center>
</form>
</div >
<%@include file="companytable.jsp"%>
</body>
</html>