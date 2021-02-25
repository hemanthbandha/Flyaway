<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Master</title>      

 <script>
function myFunction() {
  var x = document.getElementById("destination").value;
  var y=document.getElementById("source").value;
  if(x===y)
  {
  document.getElementById("demo").innerHTML = "From &amp; To airports cannot be the same";
	}
	
}


 
</script>
</head>
<body background="admbcg.jpg"style="background-size: 100%">
<%@include file="navbar.jsp"%>
<div class="master" style="position:fixed;top:20%;left:10%;transform(-50%,-50%);" >
<center><h4 style="color:#FFFFFF"><b>Master List:</b></h4></center>
<br>
<form method="post" action="masterback.jsp" ><%
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM" ,"2321963hH");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select Distinct source from sd");
%>

<label for="1" style="color:#FFFFFF;">Source&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
<select name="source" id="source" style="width:130px" required>
<option value="" >Source</option>
<%
while(rs.next()){
%>
<option width="120px" value="<%=rs.getString("source")%>"><%=rs.getString("source")%></option>
<%}
rs.close();
%>
</select>
<br>
<br>

<label for="2" style="color:#FFFFFF;">Destination&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
<select name="destination" id="destination" onchange="myFunction()" style="width:130px"required>
<option value="">Destination</option>

<%
ResultSet rs1=st.executeQuery("select Distinct destination from sd");
while(rs1.next()){
%>
<option value="<%=rs1.getString("destination")%>" ><%=rs1.getString("destination")%></option>
<%}%>
</select>
<span id="demo" style="color:red;"></span>
<br>
<br>
<label for="2" style="color:#FFFFFF;">Airline Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
<select name="company"required >
<option value="" >Airlines</option>
<%
ResultSet rs2=st.executeQuery("select cmpname from company");
while(rs2.next()){
%>
<option value="<%=rs2.getString("cmpname")%>"><%=rs2.getString("cmpname")%></option>
<%}%>
</select>

<br>
<br>


<label for="1" style="color:#FFFFFF;">Price&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>

<input name="price" type="number" value="" style="width:130px" required style="color:#000000;"><br><br>
<label for="1" style="color:#FFFFFF;">Date&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>

<%@include file="date.jsp"%>

<center><input type="submit" value="Add" style="background-color:#000000; color:#FFFFFF;width:80px;"></center>
</form>

</div >
<%@include file="mastertable.jsp"%>
</body>
</html>