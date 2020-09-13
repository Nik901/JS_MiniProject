<html>
<head>
<%int x,y,z,i;
x=0;
y=1;
z=0;
%>
<%
for(i=0;i<10;i++)
{
%>
<h2><%=z%></h2>
<%
z=x+y;
x=y;y=z;

}
%>
</head>
</html>