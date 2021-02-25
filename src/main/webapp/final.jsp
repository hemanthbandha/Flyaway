<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment recieved</title>
</head>
<body>
<%
Random rand = new Random(); 
int r= rand.nextInt(1000); 
%>
<img src="final.jpg" style="position:fixed;top:30%;left:30%;">
<br>
<span style="color:red;position:fixed;top:57%;left:44%;">Transaction id : <%=r%></span>
<br>
<br>
<span style="color:red;position:fixed;top:54%;left:37%;">You will receive a message of your travel details shortly</span>
</body>
</html>