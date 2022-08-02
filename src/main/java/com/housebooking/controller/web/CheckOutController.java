package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.DAOimpl.web.BillDAO;
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.DAOimpl.web.WebBuildingDAO;
import com.housebooking.Model.Bill;
import com.housebooking.Model.Bill_Detail;
import com.housebooking.Model.Building;
import com.housebooking.Model.Notification;
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
		String buildingId = request.getParameter("buildingId");
		String roomId = request.getParameter("roomId");
		String startDate1 = request.getParameter("startDate");
		String endDate1 = request.getParameter("endDate");
		String note = request.getParameter("note");
		
		String[] arrStartDate = startDate1.split("/");
		Date startDate = Date.valueOf(arrStartDate[2] + "-" + arrStartDate[0] + "-" + arrStartDate[1]);
		String[] arrEndDate = endDate1.split("/");
		Date endDate = Date.valueOf(arrEndDate[2] + "-" + arrEndDate[0] + "-" + arrEndDate[1]);
		
		float price = 0;
		if(request.getParameter("price")!=null && !request.getParameter("price").equals("")) {
			price = Float.parseFloat(request.getParameter("price"));
		}
		
		//LocalDate orderDate = LocalDate.now();
		Date date = new Date(System.currentTimeMillis());
		String billId = "Bill_" + new BillDAO().Count();
		String status = "Chờ xác nhận";
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		ss.setAttribute("checkout_message", null);
		
		Bill bill = new Bill(billId, date, 0, status, userSession.getUser().getUserId());
		List<Bill_Detail> lisBill_Details = new ArrayList<Bill_Detail>();
		Bill_Detail bill_Detail = new Bill_Detail(roomId, startDate, endDate, price, note, 0);
		lisBill_Details.add(bill_Detail);
		
		bill.setBillDetail(lisBill_Details);
		
		BillDAO billDAO = new BillDAO();
		if(billDAO.Insert(bill)) {
			billDAO.InsertBillDetail(bill);
			ss.setAttribute("checkout_message","Gửi yêu cầu thành công");
			request.setAttribute("message", "Đặt phòng thành công");
			
			NotificationDAO notificationDAO = new NotificationDAO();
			com.housebooking.DAOimpl.admin.BuildingDAO buildingDAO = new com.housebooking.DAOimpl.admin.BuildingDAO();
			Building building = buildingDAO.Find(buildingId);
			
			Notification notification = new Notification("notification_" + (notificationDAO.Count() + 1), building.getUserId(), date, "Yêu cầu đặt phòng", "unseen", billId);
			notificationDAO.add(notification);
		}
		else {
			ss.setAttribute("checkout_message", "Gửi yêu cầu không thành công");
			request.setAttribute("message", "Đặt phòng không thành công");
		}
		
		int dateRange = DateRange(startDate, endDate) == 0?1:DateRange(startDate, endDate);

		RoomDAO roomDAO = new RoomDAO();
		WebBuildingDAO webBuildingDAO = new WebBuildingDAO();
		
		Room room = roomDAO.Find(roomId);
		Building building = webBuildingDAO.find(buildingId);
		
		request.setAttribute("dateRange", dateRange);
		request.setAttribute("startDate", startDate);
		request.setAttribute("endDate", endDate);
		request.setAttribute("room", room);
		request.setAttribute("building", building);
				
		response.sendRedirect("check-out?buildingId=" + buildingId + "&roomId=" + roomId + "&startDate=" +startDate1 + "&endDate=" + endDate1 );
//		RequestDispatcher rd = request.getRequestDispatcher("/view/web/checkout.jsp");
//		rd.forward(request, response);
	}
	
	private void Notification(HttpServletRequest request, HttpServletResponse response) {
		HttpSession ss = request.getSession(true);
		UserSession us = (UserSession) ss.getAttribute("usersession");
		
		List<Notification> listNotification = new NotificationDAO().list(us.getUser().getUserId());
		ss.setAttribute("listNotification", listNotification);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		if(userSession != null) {
			Notification(request, response);
		}	
		String buildingId = request.getParameter("buildingId");
		String roomId = request.getParameter("roomId");
		String startDate1 = request.getParameter("startDate");
		String endDate1 = request.getParameter("endDate");
		
		String[] arrStartDate = startDate1.split("/");
		Date startDate = Date.valueOf(arrStartDate[2] + "-" + arrStartDate[0] + "-" + arrStartDate[1]);
		String[] arrEndDate = endDate1.split("/");
		Date endDate = Date.valueOf(arrEndDate[2] + "-" + arrEndDate[0] + "-" + arrEndDate[1]);
		
		int dateRange = DateRange(startDate, endDate) == 0?1:DateRange(startDate, endDate);

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