package com.housebooking.controller.homeowner;

import java.io.IOException;
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
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.Model.Bill;
import com.housebooking.Model.Notification;
import com.housebooking.Model.UserSession;

/**
 * Servlet implementation class RequestManageController
 */
@WebServlet("/manage-bill")
public class RequestManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void Proccess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "Filter":
				doFilter(request, response);
				break;
			case "approve":
				doApprove(request, response);
				break;
			case "deny":
				doDeny(request, response);
				break;
			default:
				doDisplay(request, response);
				break;
			}
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

	private void doDeny(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("manage_bill_message", null);
		
		BillDAO billDAO = new BillDAO();
		if(billDAO.Deny(request.getParameter("billId"))) {
			request.setAttribute("message", "Cập nhật trạng thái thành công");
			ss.setAttribute("manage_bill_message", "Cập nhật trạng thái thành công");
		}
		else {
			request.setAttribute("message", "Cập nhật trạng thái không thành công");
			ss.setAttribute("manage_bill_message",  "Cập nhật trạng thái không thành công");
		}
		
		response.sendRedirect("manage-bill");
		
	}

	private void doApprove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		ss.setAttribute("manage_bill_message", null);
		
		String billId = request.getParameter("billId");
		
		BillDAO billDAO = new BillDAO();
		if(billDAO.Approve(billId)) {
			Bill bill = billDAO.Find(billId);
			List<Bill> denyBills = billDAO.listCommingDenyBill(bill.getBillDetail().get(0).getStartDate(),
					bill.getBillDetail().get(0).getEndDate(),  bill.getBillDetail().get(0).getRoomId());
			for(Bill b: denyBills) {
				billDAO.DenyConflictDate(b.getBillID());
			}
			request.setAttribute("message", "Cập nhật trạng thái thành công");
			ss.setAttribute("manage_bill_message", "Cập nhật trạng thái thành công");
		}
		else {
			ss.setAttribute("manage_bill_message",  "Cập nhật trạng thái không thành công");
			request.setAttribute("message", "Cập nhật trạng thái không thành công");
		}
		
		response.sendRedirect("manage-bill");
	}

	protected void doFilter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		
		String properties = request.getParameter("properties");
		String detailProperties = request.getParameter("detailProperties");

		BillDAO billDAO = new BillDAO();

		// Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 7;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<Bill> listBillDefault = billDAO.GetAll(userSession.getUser().getUserId(), (page - 1) * recordsPerPage,
				recordsPerPage, properties, detailProperties);

		// Nay la tat ca
		int totalRecords = billDAO.GetAll(userSession.getUser().getUserId(), -1, -1, properties, detailProperties).size();

		// Tinh so trang
		int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

		request.setAttribute("detailProperties", detailProperties);
		request.setAttribute("properties", properties);
		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("listBillDefault", listBillDefault);
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/request.jsp");
		rd.forward(request, response);
	}

	public RequestManageController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Notification(request, response);
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");

		BillDAO billDAO = new BillDAO();

		// Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 7;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<Bill> listBillDefault = billDAO.GetAll(userSession.getUser().getUserId(), (page - 1) * recordsPerPage,
				recordsPerPage,"","");

		// Nay la tat ca
		int totalRecords = billDAO.GetAll(userSession.getUser().getUserId(), -1, -1, "", "").size();

		// Tinh so trang
		int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("listBillDefault", listBillDefault);
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/request.jsp");
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

}
