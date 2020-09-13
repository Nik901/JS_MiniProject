<%@ page session="false" %>
<%@ page import="java.sql.*" %>
<%@page import="java.util.*" %>

<html>
<head>
<title>JDBC</title>
</head>

<body>
<h1>dept managers</h1>

<%
   String DRIVER="org.gjt.mm.mysql.Driver";
   String URL="jdbc:mysql://localhost/lyricnote";
  
   Class.forName(DRIVER);
   Connection con=null;
   
   try
 {
   con=DriverManager.getConnection(URL);
   
  String sql= ""+"SELECT * FROM a";
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(sql);
%>
<dl>
<%
   while(rs.next())
   {
     String nm=rs.getString(1);
   }
 rs.close();
 rs=null;
 stmt.close();
stmt=null;
}
finally
{
  if(con!=null)
  {
    con.close();
  }
}
%>
</dl>
</body>
</html>
     