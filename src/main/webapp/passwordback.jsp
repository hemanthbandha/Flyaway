<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password</title>
</head>
<body>
<%@include file="password.jsp"%>
<%@include file="navbar.jsp"%>
<%@include file="logout.jsp"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
String a1=session.getAttribute("usr").toString();
String x=request.getParameter("p1");
String b=request.getParameter("p2");
String c=request.getParameter("p3");
PreparedStatement stmt=con.prepareStatement("select password from login where username=? and password=?");
stmt.setString(1,a1);
stmt.setString(2,a);
ResultSet rs=stmt.executeQuery();
if(rs.next())
{
	if(b.equals(c) && !(b.equals(x)))
		{
			PreparedStatement stmt1=con.prepareStatement("Update login set password=? where username=?");
			stmt1.setString(1,b);
			stmt1.setString(2,a1);
			int rs1=stmt1.executeUpdate();
			if(rs1!=0)
				{%>
				<h4 style="color:#FFFFFF;position:fixed;top:46%;left:40%;font-family: "Lato", sans-serif;">Password Updated Successfully</h4>
				<%}
			else
				{%>
				<h4 style="color:#FFFFFF;top:50%;top:46%;left:40%;font-family: "Lato", sans-serif;">Password and Username does not match</h4><%
				}
		}
		
	else
		{
		%><h4 style="color:#FFFFFF;position:fixed;top:46%;left:40%;font-family: "Lato", sans-serif;">Old and New password should be different</h4><%
		}

}
else
		{
		%><h4 style="color:#FFFFFF;position:fixed;top:46%;left:40%;font-family: "Lato", sans-serif;">Please try again</h4><%
		}

con.close();
stmt.close();
%>
</body>
</html>