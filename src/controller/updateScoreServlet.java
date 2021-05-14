package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.ScoreDBUtill;


@WebServlet("/updateScoreServlet")
public class updateScoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ProgressID = request.getParameter("proId");
		String Evalution = request.getParameter("evaluation");
		float Score = Float.parseFloat(request.getParameter("marks"));
		String EventID = request.getParameter("eveId");
		String ElemetID = request.getParameter("eleId");
		String AthleteID = request.getParameter("athId");
		
		boolean answer = false;
		
		//this statement for write java script code to display pop up message
		PrintWriter set = response.getWriter();
		response.setContentType("text/html");
		
		try {
			
			answer = ScoreDBUtill.updateScore(ProgressID,Evalution,Score,EventID,ElemetID,AthleteID);
			
			if(answer == true) {
				
				set.println("<script type = 'text/javascript'>");
				set.println("alert('UPDATE SUCCESSFULLY');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}else {
				
				set.println("<script type = 'text/javascript'>");
				set.println("alert('unsuccessful!!!');");
				set.println("location = 'ProgressHome.jsp'");
				set.println("</script>");
				
			}
													
		}catch (Exception e) {
			e.getMessage();
		}
	}

}