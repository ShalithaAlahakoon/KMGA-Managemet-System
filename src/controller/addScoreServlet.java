package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.ScoreDBUtill;


@WebServlet("/addScoreServlet")
public class addScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String AthleteID = request.getParameter("AthleteID");
		String EventID = request.getParameter("EventID");
		String ElemetID = request.getParameter("ElemetID");
		
		String Evalution = request.getParameter("Evalution");
		float Score = Float.parseFloat(request.getParameter("Score"));
		
		
		boolean answer = false;
		
		//this statement for write java script code to display pop up message
		PrintWriter set = response.getWriter();
		response.setContentType("text/html");
		
		try {
			

            answer = ScoreDBUtill.addScore(Evalution,Score,EventID,ElemetID,AthleteID);
			
			if(answer == true) {
				
				set.println("<script type = 'text/javascript'>");
				set.println("alert('INSERT SUCCESSFULLY');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}else {
				
				set.println("<script type = 'text/javascript'>");
				set.println("alert(' TRY AGIN!!!');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}
			
						
		}catch (Exception e) {
			e.getMessage();
		}
		
	}

}
