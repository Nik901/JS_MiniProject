import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class First extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		String n=request.getParameter("username");
		out.print("<h1>"+"Welcome "+n+"</h1>");
		
		HttpSession session=request.getSession();
		session.setAttribute("uname",n);
		
		ServletContext ctx=getServletContext();
		int t=(Integer)ctx.getAttribute("totalusers");
		int c=(Integer)ctx.getAttribute("currentusers");
		out.print("h1>"+"<br>total users= "+t+"</h1>");
		out.print("<h1>"+"<br>current users= "+c+"</h1>");
		
		out.print("<br><a href='logout'>logout</a>");
		
		out.close();
	}

}
