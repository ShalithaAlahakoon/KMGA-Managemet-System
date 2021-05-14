package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtill.AthleteDBUtill;
import DBUtill.DBConnect;
import model.Achivement;
import model.Athlete;
import model.AthleteEvent;




@WebServlet("/SaveAchivmentServelet")
public class SaveAchivmentServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmpID = request.getParameter("cmp");
		String athID = request.getParameter("id");
		String achivment = request.getParameter("achivment");
		
		
		
		
		boolean isSuccess = false;
		
		try {
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
		    String sql = "insert into kmga.athlete_competition values ('"+athID+"','"+cmpID+"','"+achivment+ "')";

		    int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		

		if (isSuccess == true) {
			
			System.out.println("Achivemnt sucessfully added");
			request.setAttribute("athID", athID);
			
			//getting athletes
			List<Athlete> athleteDetails = AthleteDBUtill.getAthleteById(athID);
			request.setAttribute("athleteDetails", athleteDetails);
			
			//getting achivemnts
			List<Achivement> achivementsDetails = AthleteDBUtill.getAthleteAchivementById(athID);
			request.setAttribute("achivementsDetails", achivementsDetails);
			
			//getting events
			List<AthleteEvent> aeDetails = AthleteDBUtill.getAthleteEventById(athID);
			request.setAttribute("aeDetails", aeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileSuccess.jsp");
			dis.forward(request, response);
		} else {
			
			System.out.println("Achivemnt adding failed");
			RequestDispatcher dis = request.getRequestDispatcher("AthleteProfileUnsuccess.jsp");
			dis.forward(request, response);
			
//			out.println("<script type='text/javascript'>");
//			out.println("alert('Your username or password is incorrect');");
//			out.println("location='login.jsp'");
//			out.println("</script>");
		}
		
	}

}
