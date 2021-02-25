<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
   $( function() {
 $( "#datepicker" ).datepicker({ minDate: 0});

  } );
  </script>
</head>

<body>
<input type="text" id="datepicker" name="da" placeholder="Date of Journey" style="width:130px" required style="color:#000000;" class='far' required>
<br>
<br>

</body>
</html>