<%@ page import="java.util.Date" %> 

<html>
<head>
//<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
	
	<%@include file="header.html" %>
	
	<hr><center>
	<h2>This is main content of home.jsp </h2>
	
<h2>Today is: <%= new Date() %></h2>  
</center><hr>
	
	<%@include file="footer.html" %>
	
</body>
</html>