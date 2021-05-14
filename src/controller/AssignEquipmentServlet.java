package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.EquipmentDBUtil;
import DBUtill.LocationDBUtil;
import DBUtill.LocationEquipmentDBUtil;
import model.Equipment;
import model.Location;


@WebServlet("/AssignEquipmentServlet")
public class AssignEquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String locID = request.getParameter("location");
		String eqID = request.getParameter("equipment");
		
		boolean isTrue;
		
		isTrue = LocationEquipmentDBUtil.assignEquipment(locID, eqID);
		
		if(isTrue == true) {
			
			//get location details
			List<Location> locDetails = LocationDBUtil.getLocationDetails(locID);
			request.setAttribute("locDetails", locDetails);
			
			//get equipment details
			List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
			request.setAttribute("eqDetails", eqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AssignEquipments.jsp");
			dis.forward(request, response);
		}
		else {
			
			//get location details
			List<Location> locDetails = LocationDBUtil.getLocationDetails(locID);
			request.setAttribute("locDetails", locDetails);
			
			//get equipment details
			List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
			request.setAttribute("eqDetails", eqDetails);
			
			RequestDispatcher dis2 =  request.getRequestDispatcher("unsuccessLE.jsp");
			dis2.forward(request, response);
		}

		
	}

}
