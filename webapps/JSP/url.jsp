<%@page session="false" %>
<html>
<head>
<title>hi</title>
</head>
<body><h1>counter using url rewriting</h1>
<h1>
<%

int c=0;
String s=request.getParameter("c");
if(s!=null)
c=Integer.parseInt(s);
if(c==0)
{
%><h1>this is first time you have accessed this page. <h1><%
}
else if(c==1)
{
%><h1>You accessed this page once before.. </h1><%
}
else
{
%><h1>You accessed this page <%=c %> times before.</h1><%
}
%>
<p>
<h1>click  <a href="url.jsp?c=<%=c+1 %>"> here  </a>to visit the page again.</h1></p>

</body>
</html>
