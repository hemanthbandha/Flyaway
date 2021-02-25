<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String a=request.getParameter("usr");
String b=request.getParameter("pass");
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
 PreparedStatement stmt=con.prepareStatement("select * from login where username=? and password=?");  
stmt.setString(1,a);  
stmt.setString(2,b);  
ResultSet rs = stmt.executeQuery();
 if(rs.next())
 {
 response.sendRedirect("AdminHome.jsp");
 session.setAttribute("usr",a);
 }
 else
	 {
		response.sendRedirect("loginfail.jsp");
	 }
	 stmt.close();
con.close();
%>
</body>
</html>