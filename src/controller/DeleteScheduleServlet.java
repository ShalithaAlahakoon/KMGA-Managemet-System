package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AthleteTrainigScheduleDBUtil;
import DBUtill.TS_DButil;
import model.schedule;


@WebServlet("/DeleteScheduleServlet")
public class DeleteScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idschedule = request.getParameter("idschedule");
		boolean isTrue;
		
		isTrue = TS_DButil.deleteSchedule(idschedule);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("ValidateAthlete.jsp");
			dis.forward(request,response);
		}
		else {
			List<schedule> scheduleDetails = AthleteTrainigScheduleDBUtil.getschedule();
			request.setAttribute("scheduleDetails",scheduleDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ValidateAthlete.jsp");
			dis.forward(request,response);
			
		}
		
	}

}
