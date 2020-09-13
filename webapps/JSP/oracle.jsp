<%@page import="java.sql.*" %>
<%@page import="java.io.*"%>

<html>
<head>

<%
  try
{
  Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
Statement s1=con.createStatement();
ResultSet rs=s1.executeQuery("select * from mycollege");
%>
<br>
<table border=1 align="center">
                <tr bgcolor="lightblue" height=50 width=230 >
                    <th>ID</th>
                    <th>Name</th>
                    <th>College</th>
                </tr>
<%
 while(rs.next())
{
%>
                <tr height=50 width=400>
                    <td> <%= rs.getInt(1) %> </td>
                    <td> <%= rs.getString(2) %> </td>
                    <td> <%= rs.getString(3) %> </td>

                </tr>
<%
}

con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
  </table>

</head>
</html>
