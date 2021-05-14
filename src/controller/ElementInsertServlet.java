package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EventDBUtill;


@WebServlet("/ElementInsertServlet")
public class ElementInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String elementId = request.getParameter("elementId");
		String elementName = request.getParameter("elementName");
		String value =request.getParameter("value");
		String eventId = request.getParameter("eventId");
		
		
		
		boolean isTrue;
		
		isTrue = EventDBUtill.insertelement(elementId, elementName, value,eventId);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AllElementDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
	}

	}
}
