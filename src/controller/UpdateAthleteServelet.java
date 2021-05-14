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
import model.Athlete;




@WebServlet("/UpdateAthleteServelet")
public class UpdateAthleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");

		
		List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(id);
		request.setAttribute("athleteDetails", athleteDetails);
		
	
		
		RequestDispatcher dis = request.getRequestDispatcher("AtheleteProfileUpdateForm.jsp");
		dis.forward(request, response);
		
		
		
	
	
	}

}
