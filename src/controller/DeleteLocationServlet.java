package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.LocationDBUtil;
import model.Location;


@WebServlet("/DeleteLocationServlet")
public class DeleteLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String locID = request.getParameter("locID");
		
		boolean isTrue;
		
		isTrue = LocationDBUtil.deleteLocation(locID);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ViewAllLocations.jsp");
			dis.forward(request, response);
		}
		else {
			List<Location> locDetails = LocationDBUtil.getLocationDetails(locID);
			request.setAttribute("locDetails", locDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("LocationInfo.jsp");
			dis.forward(request, response);
		}

		
	}

}
