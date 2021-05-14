package controller;

import static java.lang.System.out;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAthleteProfileServelet")
public class DeleteAthleteProfileServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		System.out.println(id);
		
		
		boolean isTrue = DBUtill.AthleteDBUtill.DeleteAthleteByID(id);
		
		if(isTrue == true) {
			System.out.println("Succes fully deleted ID = " +id);
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("AthleteDetailsManagement.jsp");
			dis.forward(request, response);
			
			out.println();
			
		}else
		{
			System.out.println("deletion unsuccessfull " );
			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileUnsuccess.jsp");
			dis.forward(request, response);
		}
		
		
		
	}

}
