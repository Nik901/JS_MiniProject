<html>
<head>
<title>Request Dispatcher</title>
</head>
<%
String str1=request.getParameter("fnm");
String str2=request.getParameter("pwd");
if(str1=="")
{

getServletContext().getRequestDispatcher("/loginform.jsp").forward(request, response);
}

else{
getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
}
%>
</html>