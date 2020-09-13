<%
String hiddenFieldValue="mohini";
%>
<html>
<body>
<form action="p.jsp" method="post">

<center>
<font color="green">
<h1> Your name is hidden here..Click on GO to see hidden name...!!</h1>
<input type="hidden" name="hide" value="<%=hiddenFieldValue %>">
<br>
<input type=submit value="GO">
</font>
</center>
</form>
</body>
</html>