<%  
    String name = request.getParameter("name");
	String password = request.getParameter("pwd");
	if(name.equals("mohini1399@gmail.com") && password.equals("ganpati13"))
	{
		session.setAttribute("email",name);
		response.sendRedirect("Session3.jsp");

		
	}
	else
	{
		response.sendRedirect("Session.jsp");
	}
	%>

