package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.TS_DButil;


@WebServlet("/DeletePreparationServelet")
public class DeletePreparationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prepID = (String) request.getParameter("id");
		
		//this statement for write java script code to display pop up message
		PrintWriter set = response.getWriter();
		response.setContentType("text/html");

		boolean isSuccess = TS_DButil.deletePreparation(prepID);
		if(isSuccess == true) {
			
			set.println("<script type = 'text/javascript'>");
			set.println("alert('DELETE SUCCESSFULLY');");
			set.println("location = 'Preaparations.jsp'");
			set.println("</script>");
			RequestDispatcher dis = request.getRequestDispatcher("Preaparations.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			set.println("<script type = 'text/javascript'>");
			set.println("alert('DELETE UNSUCCESSFULL');");
			set.println("location = 'Preaparations.jsp'");
			set.println("</script>");
			
			
		}

	}

}
