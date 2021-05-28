package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EventDBUtill;


@WebServlet("/AssinElementServlet")
public class AssinElementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eventId = request.getParameter("EventId");
		String elementId = request.getParameter("ElementId");
		
boolean isTrue;
		
		isTrue = EventDBUtill.assinelement(eventId, elementId);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AssinElement.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
