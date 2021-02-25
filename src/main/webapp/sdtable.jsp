<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#table {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 15%;
  text-align:center
  cursor:pointer;
}

#table td, #table th {
  border: 1px solid #ddd;
  padding: 8px;
 
}

#table tr:nth-child(even){background-color: #f2f2f2;}
#table tr:nth-child(odd){background-color: #f2f2f2;}

#table tr:hover {background-color: #ddd;}

#table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
  }
</style>
</head>
<%@include file="logout.jsp"%>
<body>
  <%
 Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con1= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
 PreparedStatement stmt2=con1.prepareStatement("select * from sd");  
 ResultSet rs=stmt2.executeQuery();
 %>
 <br>
 
 

 <center>
 <table id="table" class="table" style="position:fixed;top:20%;left:70%;transform(-50%,-50%);">
 <tr>
 	<th>SNO</th>
    <th><center>Source</center></th>
     <th><center>Destination</center></th>
  </tr>
 <%
 
  int i=0;
 i++;
 while(rs.next())
 {

 %>
 <tr>
 <td><%= i %> <% i++; %></td> 
 <td><%= rs.getString("source") %></td>
 <td><%= rs.getString("destination") %></td>
 </tr>
 <%
 }
con1.close();
 %>
 </table>
 </center>
</body>
</html>