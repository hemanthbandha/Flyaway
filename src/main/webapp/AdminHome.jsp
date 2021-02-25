<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminHome</title>

<style>
.logo img{
	width: 90px;
	height:auto;
	top: 22%;
 	left: 17%;
	position:fixed;
}

</style>
</head>
<%@include file="navbar.jsp"%>
<%@include file="logout.jsp"%>
<hr style="width:200%;text-align:left;margin-left:0;position: fixed;top: 10%;left: 10%;transform: translate(-50%, -50%);border:none!important">
<body class="bcg" background="admbcg.jpg" style="background-size:100%;">
<div class="test">
<center><h1 style="color: #ce2421;position: fixed;top: 30%;left: 21%;transform: translate(-50%, -50%);font-size: 55px;
    font-variant: all-petite-caps;
    font-weight: bold;">Welcome 
<%
String a1=session.getAttribute("usr").toString();
out.print(a1);
session.setAttribute("a","usr");
%>
</h1></center>
</div>
</body>
</html>