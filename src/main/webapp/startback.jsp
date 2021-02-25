<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>

<style>
input[type=text] {
	
  padding-left: 35px;  
  border: 2px solid black;
  background-color:white;
  background-size: 30px 30px;
  background-repeat: no-repeat;
  background-position: 1% 50%;
}

input[type=text]:focus {
  background-color: floralwhite;
  outline: none;
}
input[type=submit] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  top:20%;
  padding: 14px 30px;
  margin: 10px 250px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  top:20%;
}
* {
  box-sizing: border-box;
}

.column {
  	float: left;
  	position:relative;
	left:32%;
  	width: 26%;
  	padding: 5px;

}

/* Clearfix (clear floats) */
.row::after {

  content: "";
  clear: both;
  display: table;
}

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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
  $( function() {
 $( "#datepicker" ).datepicker({ minDate: 0});

  } );
 
 function my() {
  var x = document.getElementById("sou").value;
  var y=document.getElementById("dest").value;
  if(x===y)
  {
  document.getElementById("demo").innerHTML = "From &amp; To airports cannot be the same";
	}
	
}
  </script>
</head>
<body>
<form method="post" action="startback.jsp" style="background-image:url('homebcg1.jpg');width:100%;height:500px;">

<center><h1>Welcome To Flyaway</h1></center>
<div class="class">
<center>

<%Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select DISTINCT source from master");

%>

<br>
<br>
<br>
<br>
<center>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="text" list="a" name="s" id="sou" required placeholder="From"  style="background-image: url('so.png');width:250px;height:40px;font-size:1rem;">
<datalist id="a" >

 <%
 
while(rs.next()){
%>
<option value="<%=rs.getString("source")%>"><%=rs.getString("source")%></option>
<%}
%>

</datalist> 



<input type="text" list="b" name="d" id="dest" onchange="my()" required placeholder="To" style="background-image: url('twoway.png');width:250px;height:38px;font-size:1rem;">

<datalist id="b" >

 <%
 ResultSet rs1=st.executeQuery("select DISTINCT destination from master");
 
while(rs1.next()){
%>
<option   value="<%=rs1.getString("destination")%>"><%=rs1.getString("destination")%></option>
<%}

%>

</datalist> 


<input type="text" id="datepicker" name="da" placeholder="Date of Journey" style="background-image: url('cal.png');width: 250px;height:38px;font-size:1rem;"class='far' required>
<br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit"style="font-weight:bold;" value="Search" >
<p id="demo"></p>
</center>
</div>
</form>

  <%
 Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con1= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
String a=request.getParameter("s");
String b=request.getParameter("d");
String c=request.getParameter("da");
 PreparedStatement stmt2=con1.prepareStatement("select * from master where Source=? and Destination=? and doj=?");
 stmt2.setString(1, a);
 stmt2.setString(2, b);
  stmt2.setString(3, c);
 ResultSet rs6=stmt2.executeQuery();
if(!rs6.next())
{%>
<p style="position:absolute;top:80%;left:50%;transform(-50%,-50%);font-family: "Lato", sans-serif;">No planes found</p>
<%
}

else
{
rs6=stmt2.executeQuery();
session.setAttribute("s",a);
session.setAttribute("d",b);
session.setAttribute("date",c);
%> 
 
 
 <br>
<center>

<form method="post" action="pay.jsp">
 <table id="table" class="table" style="width:800px;">
  <tr>
		<th scope="col">Source</th>
		<th scope="col">Destination</th>
		<th scope="col">Price</th>
		<th scope="col">Company</th>
		<th scope="col">Journey Date</th>
		<th scope="col">Select Airline</th>
		
 
 </tr>
 
<%
 


 while(rs6.next())
 {
 String taskId=rs6.getString("airline");

 %>
	<tr>
		<td><%= rs6.getString("source") %></td>
		<td><%= rs6.getString("destination") %></td>
		<td><%= rs6.getInt("price") %>Rs
		<td><%= rs6.getString("Airline") %></td>
		<td><%= rs6.getString("doj") %></td>		
		</td>
		<td>
		<input type="radio" name="z" value="<%=taskId%>">
		</td>
	</tr>		
 <%
 

 }
 
 %>
 </table>

 <br>
 
<input type="submit" value="Confirm">
 </form>

</center>
<%}





%>
</body>
</html>