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


@WebServlet("/DeleteEquipmentServlet")
public class DeleteEquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eqID = request.getParameter("eqID");
		
		boolean isTrue;
		
		isTrue = EquipmentDBUtil.deleteEquipment(eqID);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ViewAllEquipments.jsp");
			dis.forward(request, response);
		}
		else {
			List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
			request.setAttribute("eqDetails", eqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("EquipmentInfo.jsp");
			dis.forward(request, response);
		}
		
	}

}
