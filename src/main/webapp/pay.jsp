<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Registration Form</title>
<style>
.registerbtn:hover {
  opacity: 1;
}
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  opacity: 0.9;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  font-size:1rem;
 
  
}

input[type=text] {
  width: 20%;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus,{
  background-color: #ddd;
  outline: none;
}
</style>
</head>
<img src="advert.jpg" style="float:left;" width="550" height="665">
<body>
<center><h3 >Details</h3></center>
<%
String a=session.getAttribute("s").toString();
String b=session.getAttribute("d").toString();
String d=session.getAttribute("date").toString();
String c=request.getParameter("z").toString();
int p;
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con1= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
 PreparedStatement stmt2=con1.prepareStatement("select price from master where Source=? and Destination=? and airline=?");
 stmt2.setString(1, a);

 stmt2.setString(2, b);
 stmt2.setString(3, c);
 ResultSet rs6=stmt2.executeQuery();
 while(rs6.next())
 {
p=rs6.getInt("price");
%>

<center>

<form method="post"action="gateway.jsp">
<input type="hidden" name="p" value="<%=p%>" readonly><br><br>
<%}%>
<label>Name*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable><input type="text" placeholder="John More Doe" value=""  name="fn" required><br><br>
<label>Email*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable><input type="text" placeholder="JohnMoreDoe@gmail.com" value="" name="em" required><br><br>
<label>Source&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable><input type="text" value="<%=a%>" readonly><br><br>
<label>Destination&nbsp;&nbsp;</lable><input type="text" value="<%=b%>" readonly><br><br>

<label>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable><input type="text" value="<%=d%>" readonly><br><br>
<label>Airline&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</lable><input type="text" value="<%=c%>" readonly><br><br>

<label>Tickets*
<select style="width:130px;" name="z" require="required">
<option selected value="1" >1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>

</select>
<br><br>
<button type="submit" class="registerbtn">Proceed to pay</button>
</form>
</center>
</body>
</html>