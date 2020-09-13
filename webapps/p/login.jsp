<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<style>
.button {
    background-color: #000066;
    border: 2x outset #000066;
    color: white;
    padding: 4px 80px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius:2px;
}
w
{
 font-size:20px;
}
</style>
</head>

<body bgcolor="skyblue">


<%
String nm=request.getParameter("nm");
String id=request.getParameter("um");
String pass=request.getParameter("pass");
out.println(nm);
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
PreparedStatement stmt=con.prepareStatement("insert into reg5 values(?,?,?)");
stmt.setString(1,nm);
stmt.setString(2,id);
stmt.setString(3,pass);
int i=stmt.executeUpdate();
}
catch(Exception e)
{
}


%>

<br>
<center>
<div id="form" style="position;right;right:100px;width:500px;height:auto;background-color:fff;border:solid 2px;">
<img src="img/log.jpeg" height="150" width="150">  
<form name="login" action="dispatcher.jsp"   method="post"><br><br>

            User name:
          <input type="text" name="um1" ><br><br>
             Password: 
           <input type="password" name="pass1"><br><br>

 <input type="submit" value="submit" class=button name="name"><br>
<a href="reg1.jsp"><input type="button" value="sign up" name="b2"   class=button target="quiz.jsp"><br>
   </a> 


 </form>
</body>
</html>