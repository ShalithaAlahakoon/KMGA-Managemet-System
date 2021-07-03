package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AdminDBUtill;
import model.Admin;


@WebServlet("/logingServlet")
public class logingServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uid");
		String pass = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = AdminDBUtill.validate(username,pass);
		
		//this statement for write java script code to display pop up message
				PrintWriter set = response.getWriter();
				response.setContentType("text/html");

		if (isTrue == true) {
			List<Admin> adminDetails = AdminDBUtill.getAdmin(username);
			request.setAttribute("adminDetails", adminDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("adminPage.jsp");
			dis.forward(request, response);
			
		} else {
			set.println("<script type='text/javascript'>");
			set.println("alert('Your username or password is incorrect');");
			set.println("location='logingPage.jsp'");
			set.println("</script>");
			RequestDispatcher dis = request.getRequestDispatcher("logingPage.jsp");
			dis.forward(request, response);
		}
		
	}

}
