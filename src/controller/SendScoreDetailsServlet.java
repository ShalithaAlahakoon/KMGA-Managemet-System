package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendScoreDetailsServlet
 */
@WebServlet("/SendScoreDetailsServlet")
public class SendScoreDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Evaluation = request.getParameter("Evaluation");
		request.setAttribute("Evaluation", Evaluation);
		
		System.out.println("from sendScoreDetailsServlet = "+Evaluation);
		
		
		String Athleteid= request.getParameter("Athleteid");
		request.setAttribute("Athleteid", Athleteid);
		
		System.out.println("from sendScoreDetailsServlet = "+Athleteid);
		
		RequestDispatcher dis = request.getRequestDispatcher("addScore.jsp");
		dis.forward(request, response);
	}

}
