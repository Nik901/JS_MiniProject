<html>
<body>
<%
String s1=request.getParameter("r6");
String s2=request.getParameter("r7");
String s3=request.getParameter("r8");
String s4=request.getParameter("r9");
String s5=request.getParameter("r10");
String s6=request.getParameter("hd2");


out.println(s6);
int i=4;

%>
<%
if(s1.equals("0L"))
{
i++;
}
if(s2.equals("true"))
{
i++;
}
if(s3.equals("D."))
{
i++;
}
if(s4.equals("B."))
{
i++;
}
if(s5.equals("C."))
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
</html>