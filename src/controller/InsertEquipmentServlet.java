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
import model.Equipment;



@WebServlet("/InsertEquipmentServlet")
public class InsertEquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eqID = request.getParameter("eqID");
		String eqName = request.getParameter("eqName");
		String eqDescription = request.getParameter("eqDescription");
		String qty = request.getParameter("qty");
		String owner = request.getParameter("owner");
		String width = request.getParameter("width");
		String height = request.getParameter("height");
		String length = request.getParameter("length");
		
		boolean isTrue;
		
		isTrue = EquipmentDBUtil.insertEquipment(eqID, eqName, eqDescription, qty, owner, width, height, length);
		
		if(isTrue == true) {
			
			List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
			request.setAttribute("eqDetails", eqDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("EquipmentInfo.jsp");
			dis.forward(request, response);
		}
		else {
			List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
			request.setAttribute("eqDetails", eqDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccessLE.jsp");
			dis2.forward(request, response);	 		
		}
		
		
	}

}
