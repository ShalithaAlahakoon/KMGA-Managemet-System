package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.FinanceDBUtil;
import model.Finance;


@WebServlet("/UpdateFinanceServlet")
public class UpdateFinanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String transactionId = request.getParameter("transactionId");
		String date = request.getParameter("date");
		String description = request.getParameter("description");
		String amounts = request.getParameter("amounts");
		String type = request.getParameter("type");
		
		System.out.println(transactionId);
		System.out.println(date);
		System.out.println(description);
		System.out.println(amounts);
		System.out.println(type);

		
		boolean isTrue;
		
		isTrue = FinanceDBUtil.updatefinance(transactionId, date, description, Double.parseDouble(amounts), type);
		
		if(isTrue == true) {
			
	    	   List<Finance> finDetails = FinanceDBUtil.getFinanceDetails(transactionId);
	    	   request.setAttribute("finDetails", finDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewFinance.jsp");
			dis.forward(request, response);
		}
		else {
			
	    	   List<Finance> finDetails = FinanceDBUtil.getFinanceDetails(transactionId);
	    	   request.setAttribute("finDetails", finDetails);
	    	   
			RequestDispatcher dis = request.getRequestDispatcher("FinanceUnsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
