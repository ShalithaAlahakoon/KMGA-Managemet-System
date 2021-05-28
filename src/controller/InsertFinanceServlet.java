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


@WebServlet("/InsertFinanceServlet")
public class InsertFinanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String transactionId = request.getParameter("transactionId");
		String date = request.getParameter("date");
		String description = request.getParameter("financeDescription");
		String amounts = request.getParameter("amounts");
		String type = request.getParameter("type");

		
       	boolean isTrue;
       	
       isTrue =	FinanceDBUtil.insertFinance(transactionId, date, description, Double.parseDouble(amounts), type);
       
       if(isTrue == true) {
    	   
    	   List<Finance> finDetails = FinanceDBUtil.getFinanceDetails(transactionId);
    	   request.setAttribute("finDetails", finDetails);
    	   
    	   RequestDispatcher dis = request.getRequestDispatcher("ViewFinance.jsp");
    	   dis.forward(request, response);
    	   
       }else {
    	   
    	   List<Finance> finDetails = FinanceDBUtil.getFinanceDetails(transactionId);
    	   request.setAttribute("finDetails", finDetails);
    	   
    	   RequestDispatcher dis2 = request.getRequestDispatcher("FinanceUnsuccess.jsp");
    	   dis2.forward(request, response);
       }
	}

}
