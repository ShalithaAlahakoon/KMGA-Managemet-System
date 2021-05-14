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


@WebServlet("/UpdateCompetitionServlet")
public class UpdateCompetitionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmpId = request.getParameter("cmpId");
		String cmpName = request.getParameter("cmpName");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String venue = request.getParameter("venue");
		
		System.out.println("UpdateCompetionServelet"+cmpId);
		
		boolean isTrue;
		
		isTrue = CompetitionDBUtil.updatecompetitions(cmpId, cmpName, date, time, venue);
		
		if(isTrue == true) {
			
			List<Competition> CompetitionDetails = CompetitionDBUtil.getCompetitionDetails(cmpId);
			request.setAttribute("CompetitionDetails", CompetitionDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewCompetitions.jsp");
			dis.forward(request, response);
		}
		else {
			List<Competition> CompetitionDetails = CompetitionDBUtil.getCompetitionDetails(cmpId);
			request.setAttribute("CompetitionDetails", CompetitionDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		
		}
	}

	}
