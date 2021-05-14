package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.TS_DButil;


@WebServlet("/Create_TS_servelet")
public class Create_TS_servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("create ts servelet called");
		
		
		String idschedule = request.getParameter("idschedule");
		String athleteId = request.getParameter("athleteId");
		String date = request.getParameter("date");
		String day = request.getParameter("day");
		String time = request.getParameter("time");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue=TS_DButil.CreateTSchedule(idschedule,athleteId,date,day,time,description);
		
		if(isTrue==true) {
			RequestDispatcher dis =request.getRequestDispatcher("ValidateAthlete.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 =request.getRequestDispatcher("TSunsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
