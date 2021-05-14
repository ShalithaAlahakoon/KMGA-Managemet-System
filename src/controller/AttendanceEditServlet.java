package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AttendanceDbUtil;
import model.Attendance;

/**
 * Servlet implementation class editServlet
 */
@WebServlet("/AttendanceEditServlet")
public class AttendanceEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttendanceEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String athleteID = request.getParameter("athleteID");
		String name = request.getParameter("name");
		String inTime = request.getParameter("inTime");
		String outTime = request.getParameter("outTime");
		String date = request.getParameter("date");
		
		Attendance ath = new Attendance(athleteID, name, inTime, outTime, date);
		
		AttendanceDbUtil edit = new AttendanceDbUtil();
		
		boolean isTrue;
		
		try {
			isTrue = edit.edit(ath);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AttendanceViewServlet");
		dispatcher.forward(request, response);
		
	}

}
