package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Event;




@WebServlet("/AddEventToAthleteServelet")
public class AddEventToAthleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting id from profilejsp
		String athleteID = request.getParameter("id");
		request.setAttribute("athleteID", athleteID);
		
		
		List<Event> eventDetails = DBUtill.EventDBUtill.getEvent();
		request.setAttribute("eventDetails", eventDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("AddEventToAthlete.jsp");
		dis.forward(request, response);
		
	}

}
