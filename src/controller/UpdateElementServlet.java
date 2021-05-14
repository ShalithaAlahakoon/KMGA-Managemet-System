package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EventDBUtill;



@WebServlet("/UpdateElementServlet")
public class UpdateElementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ElementId = request.getParameter("elementId");
		String ElementName = request.getParameter("elementName");
		String Value = request.getParameter("value");
		
		
		boolean isTrue;
		
		isTrue = EventDBUtill.updateelement(ElementId, ElementName, Value);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("AllElementDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
