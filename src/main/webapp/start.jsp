<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*,javax.servlet.http.*" %>
    

<html>
<head>
<meta charset="ISO-8859-1">
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
  border-radius: 4px;i
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

.Line
{
text-align:center;
display: block;
margin-top: 13px;
color:#4A4A4A;
font-family: Helvetica, sans-serif;
font-weight: 800;
font-size: 18pt;
}
.class{

position:absolute;
top:23%;
left:0%;

}

.first{
    float: left;
    width: 100%;
    height: 80%;
 	top:20%;
}
 .card-body{
  background-color: lightgrey;
  width:100%;
  border: 15px solid green;
  top:20%;
  padding: 5%;
  margin: 0%;
}
</style>
<title>Home Page</title>

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

<body >


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

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit"style="font-weight:bold;" value="Search" >
<p id="demo"></p>
</center>
</div>
</form>

<div class="prom">

<center>
<img style="width:150px;height:150px:" src="hand.png" ></img>
</center>

</div>

<div class="Line"> We promise to deliver</div>

<div class="row">
<div class="column">
<img  style="height:150px;" src="safe.jpg">
 <figcaption style="font-family: Helvetica, sans-serif;font-weight: 800;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSAFETY +</figcaption>
</div>
<div class="column">
<img  style="width:150px;height:150px:" src="lp.png">
<figcaption  style="font-family: Helvetica, sans-serif;font-weight: 800;" > &nbsp&nbsp&nbsp&nbsp&nbspLOWEST PRICES</figcaption>
</div>
</div>




<br>

<div class="card-body">



							<h3 style="font-size: 1.5rem;" class="mb-4 ">Why Flyaway for Aeroplane Ticket Booking </h3>

<p class="mt-3 ">Flyaway has 250 Aeroplane partners to choose for ticket booking who are serving more than 1,00,000+ routes across Globe. Flyaway enables users to book Aeroplane tickets on both Desktop and Mobile site seamlessly. All the bookings you make on the Flyaway website are safe &amp; secure. Flyaway offers 24/7 customer support to resolve all your plane ticket booking queries.</p>

<h3 style="font-size: 1.5rem;" class="mb-4 mt-5">Benefits of Booking Plane Tickets Online</h3>

<p>Booking plane tickets online with Flyaway has solved many problems that people face while booking their tickets at offline counters or travel agents. </p>

							<ul>

<li>Avoid standing in long queues at offline airport ticket counters</li>
<li>Avoid travel agents </li>
<li>Choose from multiple Plane operators</li>
<li>Book both Private and Normal tickets online</li>
<li>Check Planes ticket availability online</li>
<li>Get Plane timings, ticket price, boarding &amp; dropping point details online</li>
<li>Access to payment partner discounts and cashback offers</li>
<li>Free cancellation feature</li>
<li>24/7 customer support</li>
<li>Each and every transaction is simple, safe and secure.</li>
							</ul>

							<h3 style="font-size: 1.5rem;" class="mb-4 mt-5">How to book bus tickets online on Flyaway</h3>

<p>Each and every booking or transaction you do on the Flyaway website is simple, safe &amp; secure. You can complete your booking process from the best plane booking website by following the steps mentioned below.</p>


							<ul>

								<li>Enter the Source and Destination details in the leaving from and Going to tab respectively</li>

<li>Select the Journey date from calendar icon and click on the Search button</li>
<li>Select any plane operator of your choice from the list of planes which are displayed</li>
<li>Select a seat boarding and dropping points and hit Continue to payment</li>
<li>Enter all the required information including contact number &amp; passenger details</li>
<li>Complete the payment process be selecting your mode of payment</li></ul>

<p class="mt-3 ">Once the payment process is done, you will receive an M-ticket on your mobile as SMS, whatsapp message and an e-ticket on email ID that was entered under “Enter Contact Details.”</p>



						</div>


</body>
</html>