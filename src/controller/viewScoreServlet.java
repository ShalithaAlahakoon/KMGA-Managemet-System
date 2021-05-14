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
       
 
	String progressId = request.getParameter("search");
	
	
	try {
		
		List<Score> answer = ScoreDBUtill.viewScore(progressId);
		
				
		request.setAttribute("details", answer);
		
		
		RequestDispatcher redD = request.getRequestDispatcher("viewScore.jsp");
		redD.forward(request, response);
		
	}catch (Exception e) {
		e.getMessage();		}
	
	}

}