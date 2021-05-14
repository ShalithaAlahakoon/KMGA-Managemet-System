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


@WebServlet("/DeleteFinanceServlet")
public class DeleteFinanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String transactionId = request.getParameter("transactionId");
		boolean isTrue;
		
		isTrue = FinanceDBUtil.deletefinance(transactionId);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewLedger.jsp");
			dispatcher.forward(request,response);
		}
		else {
			List<Finance> finDetails = FinanceDBUtil.getFinanceDetails(transactionId);
			request.setAttribute("finDetails" , finDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewFinance.jsp");
			dispatcher.forward(request,response);
		}
	}

}
