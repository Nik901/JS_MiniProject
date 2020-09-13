<%@ page import ="java.io.*" %>

<html>
<body>
<br>
<%


String getHiddenValue=request.getParameter("hide");
out.println("<h1>hidden name is:"+getHiddenValue+"</h1>");
%>
</body>
</html>