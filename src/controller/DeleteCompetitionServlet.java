package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.CompetitionDBUtil;
import model.Competition;

@WebServlet("/DeleteCompetitionServlet")
public class DeleteCompetitionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cmpId");
		boolean isTrue;
		
		isTrue = CompetitionDBUtil.deleteCompetitions(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewCompetitions.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Competition> CompetitionDetails  = CompetitionDBUtil.getCompetitionDetails(id);
			request.setAttribute("CompetitionDetails", CompetitionDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
