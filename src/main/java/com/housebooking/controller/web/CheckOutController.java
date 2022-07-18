package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.DAOimpl.web.WebBuildingDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Room;
import com.housebooking.Model.UserSession;

/**
 * Servlet implementation class CheckOutController
 */
@WebServlet("/check-out")
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void Process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "approve":
				Approve(request, response);
				break;

			default:
				doDisplay(request, response);
				break;
			}
		}
	}
	
	protected void Approve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String buildingId = request.getParameter("buildingId");
		String roomId = request.getParameter("roomId");
		Date startDate = Date.valueOf(request.getParameter("startDate"));
		Date endDate = Date.valueOf(request.getParameter("endDate"));
		
		int dateRange = DateRange(startDate, endDate) == 0?1:DateRange(startDate, endDate);
		
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		
		RoomDAO roomDAO = new RoomDAO();
		WebBuildingDAO webBuildingDAO = new WebBuildingDAO();
		
		Room room = roomDAO.Find(roomId);
		Building building = webBuildingDAO.find(buildingId);
		
		request.setAttribute("dateRange", dateRange);
		request.setAttribute("startDate", startDate);
		request.setAttribute("endDate", endDate);
		request.setAttribute("room", room);
		request.setAttribute("building", building);
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/checkout.jsp");
		rd.forward(request, response);
	}
	
	private int DateRange(Date d1, Date d2) {
		try {
		    LocalDate dateBefore = LocalDate.parse(d1.toString());
		    LocalDate dateAfter = LocalDate.parse(d2.toString());

		    // Approach 1
		    int daysDiff = (int) ChronoUnit.DAYS.between(dateBefore, dateAfter);
		    return daysDiff;
		}catch(Exception e){
		    e.printStackTrace();
		}
		
		return 0;
	}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Process(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Process(request, response);
	}

}
