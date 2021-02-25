<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password</title>
</head>
<%@include file="navbar.jsp"%>
<%@include file="logout.jsp"%>
<%String a=session.getAttribute("usr").toString();
%>
<body background="admbcg.jpg"style="background-size: 100%">
<label for="0" style="color:#FFFFFF;position:fixed; top:24%;left:25%;transform:(-50%,-50%);">Username&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%out.print(a);%></label>
<form method="post" action="passwordback.jsp" style="position:fixed; top:30%;left:25%;transform:(-50%,-50%)">
<label for="1" style="color:#FFFFFF;">Current password</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password" name="p1" required><br><br>
<label for="2" style="color:#FFFFFF;">New password</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password" name="p2" required><br><br>
<label for="3" style="color:#FFFFFF;">New password (again)</label>&nbsp&nbsp<input type="password" name="p3" required><br><br><br>
<br>
<input type="Submit" value="SaveChanges" style="position:fixed; top:50%;left:34%;transform:(-50%,-50%);background-color:#BC2100;color:#FFFFFF;">
</form>
<form method="post" action="AdminHome.jsp" style="position:fixed; top:50%;left:45%;transform:(-50%,-50%)">
<input type="Submit" value="Cancel" style="background-color:#BC2100;color:#FFFFFF;">
</form>
</body>
</html>