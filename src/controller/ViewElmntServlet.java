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
import model.Element;


@WebServlet("/ViewElmntServlet")
public class ViewElmntServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String elementName = request.getParameter("ElementName");
		
		try {
		List<Element>elmntDetails = EventDBUtill.validateEl(elementName);
		request.setAttribute("elDetails",elmntDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("elementDetails.jsp");
		dis.forward(request, response);
	}

}
