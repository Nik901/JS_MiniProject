<html>
<head>
<title>Request Dispatcher</title>
</head>
<%
String str1=request.getParameter("um1");
String str2=request.getParameter("pass1");
if(str1=="")
{

getServletContext().getRequestDispatcher("/wrong.jsp").forward(request, response);
}

else{
getServletContext().getRequestDispatcher("/checklogin.jsp").forward(request, response);
}
%>
</html>