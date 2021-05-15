package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.schedule;


@WebServlet("/AddScheduleToAthleteServelet")
public class AddScheduleToAthleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//getting id from profilejsp
		String athleteID = request.getParameter("id");
		request.setAttribute("athleteID", athleteID);
		
		
		List<schedule> scheduleDetails = DBUtill.TS_DButil.getSchedules();
		request.setAttribute("scheduleDetails", scheduleDetails);
		System.out.println("data from add schedule to athlete servelet");
		for (schedule schedule : scheduleDetails) {
			
			System.out.println( schedule);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("AddScheduleToAthlete.jsp");
		dis.forward(request, response);
	}

}
