<html>
<head>
   <title>JSP expression & declarations</title>

</head>
<body><center>
<h1>JSP expressions and declarations</h1>  
<%
  int a=10;
  int b=20;
  int c=30;
  int d=a+b+c;
  out.print("sum of "+a+" "+b+" & "+c+" is:");  
%>
  <%=d%>
<%--Comments section --%>
<hr>
<% out.println("This is comment to expression.jsp file"); %>
</center>

</body>
</html>