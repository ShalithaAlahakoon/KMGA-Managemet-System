package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AttendanceDbUtil;
import DBUtill.EventDBUtill;
import model.Attendance;
import model.Element;


@WebServlet("/SearchAttendanceByIdServlet")
public class SearchAttendanceByIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String aID = request.getParameter("ElementName");
		
		try {
		List<Attendance>elmntDetails = AttendanceDbUtil.validate(aID);
		request.setAttribute("elDetails",elmntDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("SearchAttendanceView.jsp");
		dis.forward(request, response);
		
	}

}
