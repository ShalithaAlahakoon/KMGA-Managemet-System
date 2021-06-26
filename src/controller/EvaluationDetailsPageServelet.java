package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EvaluationDetailsPageServelet")
public class EvaluationDetailsPageServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


			String evaluation = request.getParameter("Evaluation");
			request.setAttribute("evaluation", evaluation);
			
			String id = request.getParameter("Athleteid");
			request.setAttribute("Athleteid", id);
			
			RequestDispatcher dis = request.getRequestDispatcher("EvaluationDetailsPage.jsp");
			dis.forward(request, response);
	}

}
