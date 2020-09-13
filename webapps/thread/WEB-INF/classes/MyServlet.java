import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.SingleThreadModel;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class MyServlet extends HttpServlet implements SingleThreadModel{  
public void doGet(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException {  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    out.print("<center><b><h1>"+"Thread is going to sleep for 10000 ms..."+"<br></h1></b></center>");  
    try
   {
       Thread.sleep(10000);
   }
   catch(Exception e)
   {
      e.printStackTrace();
   }  
    out.print("<center><b><h1><br>.<br>.<br>.<br>sleep mode is completed....!</h1></b></center>");  
    out.close();  
    }  
}  