package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AthleteDBUtill;
import DBUtill.DBConnect;
import model.Achivement;
import model.Athlete;
import model.AthleteEvent;
import model.schedule;


@WebServlet("/SaveScheduleToAtheletServelet")
public class SaveScheduleToAtheletServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String scheduleID = request.getParameter("schedule");
		String athleteID = request.getParameter("id");
		
		boolean isSuccess = false;
		
		try {
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
		    String sql = "insert into kmga.athlete_schedule values ('"+athleteID+"','"+scheduleID+ "')";

		    int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		

		if (isSuccess == true) {
			
			System.out.println("Schedule sucessfully added");
			request.setAttribute("athID", athleteID);
			
			//getting athletes
			List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(athleteID);
			request.setAttribute("athleteDetails", athleteDetails);
			
			//getting achivemnts
			List<Achivement> achivementsDetails = AthleteDBUtill.getAthleteAchivementById(athleteID);
			request.setAttribute("achivementsDetails", achivementsDetails);
			
			//getting events
			List<AthleteEvent> aeDetails = AthleteDBUtill.getAthleteEventById(athleteID);
			request.setAttribute("aeDetails", aeDetails);
			
			//getting schedule
			List<schedule> ScheduleDetails = AthleteDBUtill.getAthleteScheduleById(athleteID);
			request.setAttribute("ScheduleDetails", ScheduleDetails);
			

			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileSuccess.jsp");
			dis.forward(request, response);
			
			//aleart
			
		} else {
			
			System.out.println("Schedule adding failed");
			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileUnsuccess.jsp");
			dis.forward(request, response);
			
//			out.println("<script type='text/javascript'>");
//			out.println("alert('Your username or password is incorrect');");
//			out.println("location='login.jsp'");
//			out.println("</script>");
		}
		
	}

}
