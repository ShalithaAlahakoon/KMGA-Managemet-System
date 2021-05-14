package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.CompetitionDBUtil;

/**
 * Servlet implementation class ServeltD
 */
@WebServlet("/AddCompetitionServlet")
public class AddCompetitionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	



		String cmpId = request.getParameter("cmpId");
		String cmpName = request.getParameter("cmpName");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String venue = request.getParameter("venue");
		
		
		boolean isTrue;
		
		isTrue = CompetitionDBUtil.insertcompetion(cmpId, cmpName, date, time, venue);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ViewCompetitions.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
}
