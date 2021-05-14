package controller;

import static java.lang.System.out;

import java.io.IOException;
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
	

		if (isTrue == true) {
			List<Admin> adminDetails = AdminDBUtill.getAdmin(username);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminPage.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='logingPage.jsp'");
			out.println("</script>");
			RequestDispatcher dis = request.getRequestDispatcher("logingPage.jsp");
			dis.forward(request, response);
		}
		
	}

}
