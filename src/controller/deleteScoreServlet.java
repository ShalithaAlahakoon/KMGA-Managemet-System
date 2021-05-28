package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.ScoreDBUtill;


@WebServlet("/deleteScoreServlet")
public class deleteScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ProgressID = request.getParameter("proId");
	
		
		boolean answer = false;
		
		//this statement for write java script code to display pop up message
		PrintWriter set = response.getWriter();
		response.setContentType("text/html");
		
		try {
			
			System.out.println(ProgressID);

			answer = ScoreDBUtill.deleteScore(ProgressID);
			
			if(answer == true) {
				
			    set.println("<script type = 'text/javascript'>");
				set.println("alert('DELETE SUCCESSFULLY');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}else {
				
				set.println("<script type = 'text/javascript'>");
				set.println("alert('TRY AGAIN to delete!!!');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}
			
						
		}catch (Exception e) {
			e.getMessage();
		}
		
	}

}
