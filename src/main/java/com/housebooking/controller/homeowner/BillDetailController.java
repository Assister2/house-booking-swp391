package com.housebooking.controller.homeowner;

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

import com.housebooking.DAOimpl.houseowner.BillDAO;
import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.DAOimpl.houseowner.ServiceDAO;
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.Model.Bill;
import com.housebooking.Model.Notification;
import com.housebooking.Model.Room;
import com.housebooking.Model.Service;
import com.housebooking.Model.ServiceUsed;
import com.housebooking.Model.User;
import com.housebooking.Model.UserSession;

@WebServlet("/manage-BillDetail")
public class BillDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void Proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action != null && !action.equals("")) {
			switch (action) {
			case "addService":
				AddService(request, response);
				break;
			case "deleteService":
				DeleteService(request, response);
				break;
			case "save":
				Save(request, response);
				break;
			case "cancel":
				Cancel(request, response);
				break;

			default:
				doDisplay(request, response);
				break;
			}
		}
		else {
			doDisplay(request, response);
		}	
	}
	
	private void Notification(HttpServletRequest request, HttpServletResponse response) {
		HttpSession ss = request.getSession(true);
		UserSession us = (UserSession) ss.getAttribute("usersession");
		
		List<Notification> listNotification = new NotificationDAO().list(us.getUser().getUserId());
		ss.setAttribute("listNotification", listNotification);

//		List<com.housebooking.Model.Notification> listNotification = (List<com.housebooking.Model.Notification>) ss
//				.getAttribute("listNotification");
		List<com.housebooking.Model.Notification> listFeedbackNotification = new ArrayList<>();
		List<com.housebooking.Model.Notification> listRequestNotification = new ArrayList<>();

//		int countFeedbackNotification = 0;
//		int countRequestNotification = 0;

		for (com.housebooking.Model.Notification item : listNotification) {
			if (item.getContent().contains("Bình luận")) {
				// countFeedbackNotification++;
				listFeedbackNotification.add(item);
			}
			if (item.getContent().contains("Yêu cầu")) {
				// countRequestNotification++;
				listRequestNotification.add(item);
			}
		}

		ss.setAttribute("listFeedbackNotification", listFeedbackNotification);
		ss.setAttribute("listRequestNotification", listRequestNotification);
	}
	
	protected void Cancel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("bill_detail_message", null);
		
		String billId = request.getParameter("billId");
		
		BillDAO billDAO = new BillDAO();
		
		if(billDAO.Cancel(billId)) {
			request.setAttribute("message", "Cập nhật thành công");
			ss.setAttribute("bill_detail_message", "Cập nhật trạng thái thành công");
		}
		else {
			request.setAttribute("message", "Cập nhật không thành công");
			ss.setAttribute("bill_detail_message", "Cập nhật trạng thái không thành công");
		}
		
		response.sendRedirect("manage-BillDetail?billId=" + billId);
	}
	
	protected void Save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("bill_detail_message", null);
		
		String billId = request.getParameter("billId");
		float total = 0;
		if (!(request.getParameter("total") == null) && !request.getParameter("total").equals("")) {
			total = Float.parseFloat(request.getParameter("total"));
		}
		
		BillDAO billDAO = new BillDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
//		RoomDAO roomDAO = new RoomDAO();
//		Bill bill = billDAO.Find(billId);
//		Room room = roomDAO.Find(bill.getBillDetail().get(0).getRoomId());
//		
//		Service service = serviceDAO.FindInABuilding(serviceId, room.getBuildingId());
		if(billDAO.SavePaidBill(billId, total)) {
			request.setAttribute("message", "Cập nhật thành công");
			ss.setAttribute("bill_detail_message", "Cập nhật thành công");
		}
		else {
			request.setAttribute("message", "Cập nhật không thành công");
			ss.setAttribute("bill_detail_message", "Cập nhật không thành công");
		}
		
		response.sendRedirect("manage-BillDetail?billId=" + billId);
	}
	
	protected void DeleteService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("bill_detail_message", null);
		
		String billId = request.getParameter("billId");
		String serviceId = request.getParameter("serviceId");
		String roomId = request.getParameter("roomId");
		
		//BillDAO billDAO = new BillDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
//		RoomDAO roomDAO = new RoomDAO();
//		Bill bill = billDAO.Find(billId);
//		Room room = roomDAO.Find(bill.getBillDetail().get(0).getRoomId());
//		
//		Service service = serviceDAO.FindInABuilding(serviceId, room.getBuildingId());
		if(serviceDAO.DeleteServiceUsed(serviceId, roomId, billId)) {
			request.setAttribute("message", "Thêm thành công");
			ss.setAttribute("bill_detail_message", "Xóa thành công");
		}
		else {
			request.setAttribute("message", "Xóa không thành công");
			ss.setAttribute("bill_detail_message", "Thêm không thành công");
		}
		
		response.sendRedirect("manage-BillDetail?billId=" + billId);
	}
	
	protected void AddService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("bill_detail_message", null);
		
		String billId = request.getParameter("billId");
		String serviceId = request.getParameter("serviceId");
		String roomId = request.getParameter("roomId");
		
		int amount = 0;
		if (!(request.getParameter("amount") == null) && !request.getParameter("amount").equals("")) {
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		
		BillDAO billDAO = new BillDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
		RoomDAO roomDAO = new RoomDAO();
		Bill bill = billDAO.Find(billId);
		Room room = roomDAO.Find(bill.getBillDetail().get(0).getRoomId());
		
		Service service = serviceDAO.FindInABuilding(serviceId, room.getBuildingId());
		if(serviceDAO.AddServiceUsed(serviceId, roomId, billId, service.getPrice(), amount)) {
			request.setAttribute("message", "Thêm thành công");
			ss.setAttribute("bill_detail_message", "Thêm thành công");
		}
		else {
			request.setAttribute("message", "Thêm không thành công");
			ss.setAttribute("bill_detail_message", "Thêm không thành công");
		}
		
		response.sendRedirect("manage-BillDetail?billId=" + billId);
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
	
    public BillDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Notification(request, response);
		String billId = request.getParameter("billId");
		
		BillDAO billDAO = new BillDAO();
		UserDAO userDAO = new UserDAO();
		RoomDAO roomDAO = new RoomDAO();
		//BuildingDAO buildingDAO = new BuildingDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
		
		Bill bill = billDAO.Find(billId);
		User user = userDAO.find(bill.getUserId());
		Room room = roomDAO.Find(bill.getBillDetail().get(0).getRoomId());
		List<ServiceUsed> listServiceUsed = serviceDAO.listServiceUsed(billId, room.getRoomId());
		List<Service> listService = serviceDAO.listService(room.getBuildingId());
		
		int dateRange = DateRange(bill.getBillDetail().get(0).getStartDate(), bill.getBillDetail().get(0).getEndDate());
		
		request.setAttribute("listService", listService);
		request.setAttribute("listServiceUsed", listServiceUsed);
		request.setAttribute("room", room);
		request.setAttribute("dateRange", dateRange);
		request.setAttribute("user", user);
		request.setAttribute("bill", bill);
		//doDisplay(request, response);
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/invoiceDetail.jsp");
        rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

}
