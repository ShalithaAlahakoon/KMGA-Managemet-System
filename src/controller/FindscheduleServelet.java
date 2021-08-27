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
import DBUtill.TS_DButil;
import model.Achivement;
import model.schedule;

@WebServlet("/FindscheduleServelet")
public class FindscheduleServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String athid = request.getParameter("id");
		request.setAttribute("athid", athid);
		
		
		List<schedule> athleteSchedules = TS_DButil.findAthleteSchedule(athid);
		request.setAttribute("athleteSchedules", athleteSchedules);
		
		if(athleteSchedules.isEmpty()) {
			RequestDispatcher dis = request.getRequestDispatcher("Create_TS.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("ScheduleView.jsp");
			dis.forward(request, response);
		}
	}

}
