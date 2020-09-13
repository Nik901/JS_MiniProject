import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class FirstServlet extends HttpServlet
{
   public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
     {
      res.setContentType("text/html");
      String s=req.getParameter("nm");
      PrintWriter p=res.getWriter();
      p.println("WELCOME TO SERVLET:"+s);
     }
}
