package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EvaluationPageServlet")
public class EvaluationPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Evaluation page servlet called");
		
		String id = request.getParameter("id");
		request.setAttribute("athleteID", id);
		
		//System.out.println("Evaluation page received id = "+ id);
		
		RequestDispatcher dis = request.getRequestDispatcher("EvaluationPage.jsp");
		dis.forward(request, response);
	}

}
