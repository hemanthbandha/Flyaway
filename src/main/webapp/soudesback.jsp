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
<%String a=request.getParameter("src");
String b=request.getParameter("dst");
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
try{
PreparedStatement stmt1=con.prepareStatement("select * from sd where source=? and destination=?");
stmt1.setString(1,a); 
stmt1.setString(2,b);
ResultSet rs1=stmt1.executeQuery();
if(!rs1.next())
{
PreparedStatement stmt=con.prepareStatement("insert into sd values(?,?)");  
stmt.setString(1,a); 
stmt.setString(2,b); 
int x = stmt.executeUpdate();

%>
<p style="color:#FFFFFF;position:fixed;top:35%;left:25%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Added Successfully</p>
<%
}
else
{
%>
<p style="color:#FFFFFF;position:fixed;top:35%;left:25%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Data Already Exists</p>
<%
}
}
catch(Exception e)
{ 
%><p style="color:#FFFFFF;position:fixed;top:35%;left:25%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Try Again</p>

<%
 }
 
 con.close();
  
   %>
<%@include file="soudes.jsp"%>
</body>
</html>