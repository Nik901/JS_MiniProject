<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Set" %>
<html>
<head>
<title></title>
</head>
<body>
<h1><font color="red">Demonstration of thread management in JSP</font></h1>
<%
//Set<Thread> threadSet = Thread.getAllStackTraces().keySet();
Thread[] threadArray = {"ilu","ilu2"};S
//threadSet.toArray(new Thread[threadSet.size()]);
int i = 0;
for(Thread a :threadArray)
{
    i++;
    out.print(i+" "+a.getName()+"<br/>");
}
%>
</body>