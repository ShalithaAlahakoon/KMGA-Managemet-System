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
import model.Achivement;
import model.Athlete;
import model.AthleteEvent;
import model.Score;
import model.schedule;


@WebServlet("/AthleteProfileServelet")
public class AthleteProfileServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		request.setAttribute("athleteID", id);
		//testing
//		System.out.println("id got to athlete profile servelet = " + id);
		
		List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(id);
		request.setAttribute("athleteDetails", athleteDetails);
		
	
		//getting achievements
		List<Achivement> achivementsDetails = AthleteDBUtill.getAthleteAchivementById(id);
		request.setAttribute("achivementsDetails", achivementsDetails);
		
		//getting events
		List<AthleteEvent> aeDetails = AthleteDBUtill.getAthleteEventById(id);
		request.setAttribute("aeDetails", aeDetails);
		
		//GETTING SCHEDULES
		List<schedule> ScheduleDetails = AthleteDBUtill.getAthleteScheduleById(id);
		request.setAttribute("ScheduleDetails", ScheduleDetails);
		
		//GETTING TRAINING PROGRESS
		List<Score> ProgressDetails = AthleteDBUtill.getAthleteProgressById(id);
		request.setAttribute("ProgressDetails", ProgressDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("AthleteProfile.jsp");
		dis.forward(request, response);
		
		
	}

}
