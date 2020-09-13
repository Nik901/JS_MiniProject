<%@ page import="java.text.* " %>
<%@ page import="java.util.* "%>
<%@page isThreadSafe="true" %>

<%@ page import="java.lang.Thread.* "%>


<html>
<head>
<title>Insert title here</title>
</head>

<body>
<%
class Thread1 {
   
  
     Thread t1=new CounterThread();
     t1.setName("A");
      t1.start();

         Thread t2=new CounterThread();
     t2.setName("B");
      t2.start();
  }

 class CounterThread extends Thread 
 {
  final SimpleDateFormat FMT=new SimpleDateFormat("hh:mm:ss");

  public void start()
   {
  System.out.println("starting:"+getName());
  super.start();
  
 }
 public void run()

 {
  for(int i=0;i<8;i++)
  
{
   try

   {
    sleep(200);

   }

  catch(Exception e)

    {
     break;
    }
  System.out.println(FMT.format(new Date())+"Thread  "+getName()+":Count:"+i);
   }

 }
}
%>
</body>
</html>

