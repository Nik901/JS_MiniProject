<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Table</title>
</head>
<body>
	<table>
	<tr>
<%
	for(int i=1;i<=10;i++)
	{
		for(int j=1;j<=10;j++)
		{
%>
				<td><%=i*j%></td>
<%
		}
	}
%>
	</tr>
	</table>
</body>
</html>