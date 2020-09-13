<html>
<body bgcolor="white">
<%
String s1=request.getParameter("f");
String s2=request.getParameter("g");
String s3=request.getParameter("h");
String s4=request.getParameter("i");
String s5=request.getParameter("j");
String s6=request.getParameter("hd2");


int i=4;

%>
<%
if(s1.equals("C."))
{
i++;
}
if(s2.equals("C."))
{
i++;
}
if(s3.equals("D."))
{
i++;
}
if(s4.equals("C."))
{
i++;
}
if(s5.equals("D."))
{
i++;
}
%><br><b>
<center><font color="blue">
<%
out.println("<h1>Well Played...!!..Your Result :"+i+"</h1>");
%></font></center></b>

<center>
<img src="img/congrats.jpg" height="200" width="500">  
<br>

<img src="img/fw2.gif" height="300" width="300">  <hspace>
<img src="img/fw1.gif" height="300" width="300">  

<img src="img/fw2.gif" height="300" width="300">  
</center>
</body>
<html>
