package com.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BankServlet
 */
public class BankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		RequestDispatcher rd=null;
		String cname=request.getParameter("cname");
	
		String accType=request.getParameter("account");
		
		out.println("<h1 align='center' >Welcome To Bank SERVLET</h1><hr/>");
		request.setAttribute("name",cname);
		if(accType.equalsIgnoreCase("S"))
		{
			rd=request.getRequestDispatcher("/Saving");
			rd.forward(request, response);
		}
		else if(accType.equalsIgnoreCase("C"))
		{
			rd=request.getRequestDispatcher("/Current");
			rd.include(request,response);
		}
		else
		{
			rd=request.getRequestDispatcher("/Demat");
			rd.forward(request, response);
		}
		out.print("---------------Thank You--------------");
	}

}
