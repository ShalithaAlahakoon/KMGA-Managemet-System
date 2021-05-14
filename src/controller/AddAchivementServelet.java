package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AthleteDBUtill;
import DBUtill.CompetitionDBUtil;
import model.Achivement;
import model.Competition;



@WebServlet("/AddAchivementServelet")
public class AddAchivementServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String athid = request.getParameter("id");
		request.setAttribute("athid", athid);
		
		
		List<Achivement> competitionDetails = AthleteDBUtill.getAthleteAchivements();
		request.setAttribute("competitionDetails", competitionDetails);
		
		List<Competition> competitions = CompetitionDBUtil.getCompetition();
		request.setAttribute("competitions", competitions);
		
		RequestDispatcher dis = request.getRequestDispatcher("AddAchivement.jsp");
		dis.forward(request, response);
	}

}
