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


@WebServlet("/UpdateLocationServlet")
public class UpdateLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String locID = request.getParameter("locID");
		String mapLetter = request.getParameter("mapLetter");
		String locDescription = request.getParameter("locDescription");
		String floorSize = request.getParameter("floorSize");
		
		System.out.println(locID);
		System.out.println(mapLetter);
		System.out.println(locDescription);
		System.out.println(floorSize);
		System.out.println("-----------");
		
		boolean isTrue;
		
		isTrue = LocationDBUtil.updateLocation(locID, mapLetter, locDescription, floorSize);
		
		if(isTrue == true) {
			
			List<Location> locDetails = LocationDBUtil.getLocationDetails(locID);
			request.setAttribute("locDetails", locDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("LocationInfo.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Location> locDetails = LocationDBUtil.getLocationDetails(locID);
			request.setAttribute("locDetails", locDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccessLE.jsp");
			dis.forward(request, response);
		}
	}

}
