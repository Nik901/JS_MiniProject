<html>
<head>
<title>database</title>
</head>
<%
String str1=request.getParameter("fnm");
String str2=request.getParameter("pwd1");

  try
{
Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
PreparedStatement ps=null;
int u=0;
String s="insert into project values(str1,str2)values(?,?)";
ps=con.prepareCall(s);
ps.setString(1,str1);
ps.setString(2,str2);
u=ps.executeUpdate();


out.println("data is stored successfully...");
con.close();
}
catch(Exception e)
{
 out.println(e);
}


%>
</html>