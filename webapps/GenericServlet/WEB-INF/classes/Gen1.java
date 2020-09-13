import java.io.*;
import javax.servlet.*;

public class Gen1 extends GenericServlet{
 public void service(ServletRequest req,ServletResponse res)
throws IOException,ServletException{
   res.setContentType("text/html");
   PrintWriter out=res.getWriter();
   out.print("<html>");
   out.print("<body>");
   out.println("<center>"+"<h1>"+"Demonstrating use of Generic Servlet"+"</h1>"+"</center>");
  out.println("<p><h3><center>Hello friends...! This is your first generic servlet program...</center></h3></p>");
    
 out.print("</body>");
   out.print("</html>");
 }
}