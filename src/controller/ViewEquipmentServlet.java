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



@WebServlet("/ViewEquipmentServlet")
public class ViewEquipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String eqID = request.getParameter("eqID");
		
		try {
		List<Equipment> eqDetails = EquipmentDBUtil.getEquipmentDetails(eqID);
		request.setAttribute("eqDetails", eqDetails);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("EquipmentInfo.jsp");
		dis.forward(request, response);
	}

}
