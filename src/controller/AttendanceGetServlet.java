package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AttendanceDbUtil;

@WebServlet("/AttendanceGetServlet")
public class AttendanceGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("id");
		String Date = request.getParameter("date");
		String InTime = request.getParameter("inTime");
		String OutTime = request.getParameter("outTime");
		
		boolean isTrue;
		isTrue = AttendanceDbUtil.getAttendance(ID, Date, InTime, OutTime);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("GetAttendance.jsp");
			dis.forward(request, response);
		}else {
			
			RequestDispatcher dis2= request.getRequestDispatcher("GetAttendanceUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
		
		
		
		
	}

}
