package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EventDBUtill;
import model.Event;


@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String EventId = request.getParameter("eventId");
		
		boolean isTrue;
		
		isTrue = EventDBUtill.deleteevent(EventId);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AllEventDetails.jsp");
			dis.forward(request, response);
		}else {
			
			List<Event>evntDetails = EventDBUtill.validate(EventId);
			request.setAttribute("eDetails",evntDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
