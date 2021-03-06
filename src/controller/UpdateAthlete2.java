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


@WebServlet("/UpdateAthlete2")
public class UpdateAthlete2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String regNo = request.getParameter("regNo");
		String nic = request.getParameter("nic");
		String psd = request.getParameter("psw");
		

		List<Athlete> athleteDetails1 = AthleteDBUtill.getAthleteById(id);
		request.setAttribute("athleteDetails", athleteDetails1);
		
	
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
		
		boolean isTrue;
		
		isTrue = AthleteDBUtill.updateathlete(id,name, dob, gender, address, height, weight, regNo, nic, psd);
		
		if(isTrue == true) {
			System.out.println("succecss fully Updated");
			List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(id);
			request.setAttribute("athleteDetails", athleteDetails);
			request.setAttribute("athleteID", id);
			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileSuccess.jsp");
			dis.forward(request, response);
		} else {
			System.out.println("failed");
			List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(id);
			request.setAttribute("athleteDetails", athleteDetails);
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("AtheleteProfileUpdateForm.jsp");
			dis2.forward(request, response);
		}
		
	}

}
