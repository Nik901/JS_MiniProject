<html>
<body>
<%
String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
String s6=request.getParameter("hd1");


out.println(s6);
int i=Integer.parseInt(s6);

%>
<%

if(s1.equals("all"))
{
i++;
}
if(s2.equals("false"))
{
i++;
}
if(s3.equals("ab"))
{
i++;
}
if(s4.equals("b"))
{
i++;
}
if(s5.equals("yes"))
{
i++;
}
%><br><b>
<%
out.println("correct "+i);
%></b>
<br>
<form name="f1" action="quizjspResult.jsp" target="banner" method="post">
<p> <b><h3>6. which of following is not directive?</h3></b><br>
<input type="radio" name="r6" value="0">A. include<br>
<input type="radio" name="r6" value="0.0">B. taglib<br>
<input type="radio" name="r6" value="0L">C. home<br>
<input type="radio" name="r6" value="notdefined">D. page<br>

<br><br><br>

<p><b><h3>7. Is COOKIES is one of the session handling technigue?</h3></b><br>
<input type="radio" name="r7" value="true">true<br>
<input type="radio" name="r7" value="false">false<br>



<br><br>

<p><b><h3>8.Which method is used to achieve paramter in request dispatcher?</h3></b><br>
<input type="radio" name="r8" value="A.">A. set()<br>
<input type="radio" name="r8" value="B.">B.get()<br>
<input type="radio" name="r8" value="C.">C.void()<br>
<input type="radio" name="r8" value="D.">D.getParameter()<br>

<p><b><h3>9.Thread class belongs to which package?</h3></b><br>
<input type="radio" name="r9" value="A.">A. java.util<br>
<input type="radio" name="r9" value="B.">B. java.lang.Thread<br>
<input type="radio" name="r9" value="C.">C. java.sql<br>
<input type="radio" name="r9" value="D.">D. java.io<br>


<p><b><h3>10.JSP stands for what?</h3></b><br>
<input type="radio" name="r10" value="A.">A. java simple pane<br>
<input type="radio" name="r10" value="B.">B. java standard page<br>
<input type="radio" name="r10" value="C.">C. java server pages<br>
<input type="radio" name="r10" value="D.">D. java server paness<br>



<input type="hidden" name="hd2" value="<%=i %> ">
<a href="welcome"><input type="submit" value="next" name="b1"></a><br>

</body>
</html>