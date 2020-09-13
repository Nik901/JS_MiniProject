<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<%



%>
</head>
<body>
<%
int i=0;
String um=request.getParameter("um1");
String pass=request.getParameter("pass1");

try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
Statement s1=con.createStatement();
ResultSet rs=s1.executeQuery("select * from reg");
while(rs.next())
{
if((rs.getString(2).equals(um)))
{%>
<%@ include file="quizStart.jsp" %>
<%}
else
{
%>
<jsp:forward page="wrong.jsp" />
<%}
}


con.close();
}
catch(Exception e)
{
out.println("Exception:"+e);
}
 %>  
</body>
</html>
