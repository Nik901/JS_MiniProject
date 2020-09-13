<html>
<body>
<%! int i;%>
<%

try
{
String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
String s6=request.getParameter("hd1");

//int i=4;
out.println(s6);

 i=Integer.parseInt(s6);

%>
<%
if(s1.equals("ab"))
{
i++;
}
if(s2.equals("32bit"))
{
i++;
}
if(s3.equals("psn"))
{
i++;
}
if(s4.equals("s"))
{
i++;
}
if(s5.equals("many forms"))
{
i++;
}
%><br><b>
<%



}
catch(Exception e){
}
out.println("<b>correct "+i+"</b>");
%></b>
<br>
<form name="f1" action="quizjavaResult.jsp" target="banner" method="post">

<h3><p> what is the default value of longvariable<br></h3>
<input type="radio" name="r1" value="0">0<br>
<input type="radio" name="r1" value="0.0">0.0<br>
<input type="radio" name="r1" value="0L">0L<br>
<input type="radio" name="r1" value="notdefined">non of these<br>

<br><br><br>

<h3><p> can be constructor be made final<br></h3>
<input type="radio" name="r2" value="true">true<br>
<input type="radio" name="r2" value="false">false<br><br>



<br><br>

<h3>.can we inherit Constructor..? <br></h3>
<input type="radio" name="r3" value="yes">Yes<br>
<input type="radio" name="r3" value="No">No<br><br>


<p> <h3>This is Keyword is refernce to current Object<br></h3>
<input type="radio" name="r4" value="Yes">Yes<br>
<input type="radio" name="r4" value="No">No<br><br><br>

<p> <h3>Swing are platform dependent true or flase..?<br></h3>
<input type="radio" name="r5" value="true">true<br>
<input type="radio" name="r5" value="false">false<br><br>



<input type="hidden" name="hd2" value="<%=i %> "><br>
<pre><a href="welcome"><input type="submit" value="SUBMIT->" name="b1"></a>              <a href="quizjava1.jsp"><b><input type="button" value="<- BACK" name="b1" ><br>
</a>





</body>
</html>