<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Master</title>
</head>
<body background="admbcg.jpg"style="background-size: 100%">
<%@include file="navbar.jsp"%>
<%

String a=request.getParameter("source");
String c=request.getParameter("destination");
String e=request.getParameter("company");
String d=request.getParameter("da");
int b=Integer.parseInt(request.getParameter("price"));
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con5 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");

try{
PreparedStatement stmt1=con5.prepareStatement("select * from master where source=? AND destination=? AND airline=? AND price=? AND Doj=?");
stmt1.setString(1,a);
stmt1.setString(2,c);
stmt1.setString(3,e);
stmt1.setInt(4,b);
stmt1.setString(5,d);
ResultSet rs=stmt1.executeQuery();
if(!rs.next())
{
PreparedStatement stmt=con5.prepareStatement("insert into master values(?,?,?,?,?)");
stmt.setString(1,a);
stmt.setString(2,c);
stmt.setString(3,e);
stmt.setInt(4,b);
stmt.setString(5,d);
int x=stmt.executeUpdate();
%>
<p style="color:#FFFFFF;position:fixed;top:57%;left:19%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Added Successfully</p>
<%}
else{
%>
<p style="color:#FFFFFF;position:fixed;top:57%;left:19%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Data Already Exists</p>

<%
}
}

catch(Exception z)
{ 
%><p style="color:#FFFFFF;position:fixed;top:57%;left:19%;transform(-50%,-50%);font-family: "Lato", sans-serif;">Try Again</p>

<%
 }
 
 con5.close();
  
   %>

<%@include file="master.jsp"%>

</body>
</html>