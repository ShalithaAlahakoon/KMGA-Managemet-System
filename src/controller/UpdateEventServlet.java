package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EventDBUtill;

@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String EventId = request.getParameter("eventId");
		String EventName = request.getParameter("eventName");
		String EventSymbol = request.getParameter("eventSymbol");
		String Category = request.getParameter("category");
		
		boolean isTrue;
		
		isTrue = EventDBUtill.updateevent(EventId, EventName, EventSymbol, Category);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AllEventDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
