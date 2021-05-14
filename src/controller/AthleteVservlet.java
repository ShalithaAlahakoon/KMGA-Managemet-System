package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AthleteTrainigScheduleDBUtil;
import model.schedule;

@WebServlet("/AthleteVservlet")
public class AthleteVservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String athleteId = request.getParameter("athleteId");
		boolean isTrue;
		
		isTrue = AthleteTrainigScheduleDBUtil.validateAthleteID(athleteId);
		
		if(isTrue==true) {
		
		try {
				List<schedule> scheduleDetails = AthleteTrainigScheduleDBUtil.validate(athleteId);
				request.setAttribute("scheduleDetails",scheduleDetails);		
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("AthleteSchedule.jsp");
		dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("IDnotFound.jsp");
			dis.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alart('Invalide Athlete ID???');");
			out.println("location'ValidateAthlete.jsp'");
			out.println("</script>");
		}
		
	}

}
