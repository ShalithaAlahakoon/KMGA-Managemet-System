package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.ScoreDBUtill;
import model.Score;


@WebServlet("/viewScoreServlet")
public class viewScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
 
	String progressId = request.getParameter("id");
	
	System.out.println("from viewScoreServlet = "+progressId);
	
	try {
		
		List<Score> answer = ScoreDBUtill.viewScore(progressId);
		
				
		request.setAttribute("details", answer);
		
		for (Score score : answer) {
			System.out.println("from view score servelet = " + score.getAthId());
			System.out.println("from view score servelet = " + score.getEleId());
			System.out.println("from view score servelet = " + score.getEvaluation());
			System.out.println("from view score servelet = " + score.getEveId());
			System.out.println("from view score servelet = " + score.getMarks());
			System.out.println("from view score servelet = " + score.getProId());
		}
			
		
		RequestDispatcher redD = request.getRequestDispatcher("viewScore.jsp");
		redD.forward(request, response);
		
	}catch (Exception e) {
		e.getMessage();		}
	
	}

}