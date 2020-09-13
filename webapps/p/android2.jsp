<html>
<body>
<%
String s1=request.getParameter("a");
String s2=request.getParameter("b");
String s3=request.getParameter("hd1");
String s4=request.getParameter("c");
String s5=request.getParameter("d");
String s6=request.getParameter("e");
int i=Integer.parseInt(s3);

%>
<%
if(s2.equals("A."))
{
i++;
}
if(s4.equals("A."))
{
i++;
}
if(s5.equals("A."))
{
i++;
}
if(s6.equals("D."))
{
i++;
}


%>
<br>
<b>
<%
out.println("correct "+i);
%>
</b>
<br>
<form name="f1" action="android3.jsp"  target="banner" method="post">

<p><b><h3>6. you can shut down activity by calling its ________ method.</b></h3><br>
<input type="radio" name="f" value="A.">A. onDestroy()<br>
<input type="radio" name="f" value="B.">B. finishActivty()<br>
<input type="radio" name="f" value="C.">C. finish()<br>
<input type="radio" name="f" value="D.">D. None.<br>

<br><br><br>

<p><b><h3>7. how many ways to start services?</b></h3><br>
<input type="radio" name="g" value="A.">A.Started <br>
<input type="radio" name="g" value="B.">B.Bound<br>
<input type="radio" name="g" value="C.">C. a & b<br>
<input type="radio" name="g" value="D.">D. None.<br>

<br><br><br>
<p><b><h3>8. Layouts in android?</b></h3><br>
<input type="radio" name="h" value="A.">A. FrameLayout<br>
<input type="radio" name="h" value="B.">B.RelativeLayout<br>
<input type="radio" name="h" value="C.">C. TableLayout<br>
<input type="radio" name="h" value="D.">D. ALL of above.<br>

<br><br><br>

<p><b><h3>9. Which component is not activated by intent?</b></h3><br>
<input type="radio" name="i" value="A.">A. Activity<br>
<input type="radio" name="i" value="B.">B.Services<br>
<input type="radio" name="i" value="C.">C. ContentProvider<br>
<input type="radio" name="i" value="D.">D. BroadcastReceiver<br>

<br><br><br>

<p><b><h3>10. which are the screen sizes in android?</b></h3><br>
<input type="radio" name="j" value="A.">A. Small,normal<br>
<input type="radio" name="j" value="B.">B.extra large<br>
<input type="radio" name="j" value="C.">C. large<br>
<input type="radio" name="j" value="D.">D. All of above<br>

<br><br><br>

<input type="hidden" name="hd2" value="<%=i%> ">
<a href="welcome"><input type="submit" value="next" name="b1"></a><br>
<br><br>

</body>
</html>