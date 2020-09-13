import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Addition extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
     {
      res.setContentType("text/html");
      String s1=req.getParameter("no1");
      String s2=req.getParameter("no2");
      int n1=Integer.parseInt(s1);      
      int n2=Integer.parseInt(s2);      
      PrintWriter p=res.getWriter();
      int sum=n1+n2;
      p.println("<h1>Addition is:"+sum+"</h1>");
     }
}
