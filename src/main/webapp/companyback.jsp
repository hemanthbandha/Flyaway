
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
<%String a=request.getParameter("comp");
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
try{
PreparedStatement stmt=con.prepareStatement("insert into company values(?)");  
stmt.setString(1,a); 
int x = stmt.executeUpdate();%>
<p style="color:#FFFFFF;position:absolute;top:31%;left:23%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Added Successfully</p>
<%
}
catch(Exception e)
{ 
%><p style="color:#FFFFFF;position:absolute;top:31%;left:23%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Enter the Unique Name or Try Again</p>

<%
 }
 
 con.close();
  
   %>
<%@include file="company.jsp"%>

</body>
</html>