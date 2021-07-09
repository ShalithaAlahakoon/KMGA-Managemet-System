package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.PrintWriter.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.TS_DButil;


@WebServlet("/InsertPreparationServelet")
public class InsertPreparationServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prepID = (String) request.getParameter("id");
		String name = (String) request.getParameter("name");
		String set1 = request.getParameter("set");
		String reps = request.getParameter("reps");
		
		System.out.println(prepID);
		System.out.println(name);
		System.out.println(set1);
		System.out.println(reps);
		
		//this statement for write java script code to display pop up message
				PrintWriter set = response.getWriter();
				response.setContentType("text/html");
		
		boolean isSuccess = TS_DButil.insertPreparation(prepID, name, Integer.parseInt(set1), Integer.parseInt(reps));
		if(isSuccess == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Preaparations.jsp");
			dis.forward(request, response);
		}
		else
		{
			set.println("<script type = 'text/javascript'>");
			set.println("alert('INSERT SUCCESSFULLY');");
			set.println("location = 'Preaparations.jsp'");
			set.println("</script>");
			
			
		}
		
	}

}
