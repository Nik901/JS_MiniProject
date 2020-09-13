import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ExampleHttpServlet extends HttpServlet 
{    
    private String mymsg;
    public void init() throws ServletException 
    {      
       mymsg = "demonstrating use of HTTP servlet ";   
    }
    public void doGet(HttpServletRequest request, 
        HttpServletResponse response) throws ServletException, 
        IOException 
    {            
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();      
        out.println("<center>"+"<h1>" + mymsg + "</h1>"+"<center>");      
        out.println("<center>"+"<p>" +"<h3>"+ "Hello Friends!...This is your firsrt Http Servlet program.."+"</h3>" + "</p>"+"<center>");   
    }
    public void destroy() 
    {      
       // Leaving empty. Use this if you want to perform  
       //something at the end of Servlet life cycle.   
    }
}