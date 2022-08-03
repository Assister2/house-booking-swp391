package com.housebooking.controller.homeowner;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
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

@WebServlet("/dashboard")
public class DashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DashboardController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void Proccess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "readAllFeedback":
				doReadAllFeedBack(request, response);
				break;
			case "readAllRequest":
				doReadAllRequest(request, response);
				break;

			default:
				doDisplay(request, response);
				break;
			}
		}

	}

	protected void doReadAllFeedBack(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession ss = request.getSession(true);
		List<com.housebooking.Model.Notification> listFeedbackNotification = (List<com.housebooking.Model.Notification>) ss
				.getAttribute("listFeedbackNotification");
		NotificationDAO notificationDAO = new NotificationDAO();
		for (com.housebooking.Model.Notification item : listFeedbackNotification) {
			notificationDAO.Seen(item.getId());
		}

		ss.setAttribute("listFeedbackNotification", null);

		String path = request.getParameter("path");

		if (path.contains("dashboard.jsp")) {
			response.sendRedirect("dashboard");
		} else if (path.contains("building.jsp")) {
			response.sendRedirect("manage");
		} else if (path.contains("request.jsp")) {
			response.sendRedirect("manage-bill");
		} else if (path.contains("invoice.jsp")) {
			response.sendRedirect("invoice-manage");
		} else {
			response.sendRedirect("dashboard");
		}
	}

	protected void doReadAllRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession ss = request.getSession(true);
		List<com.housebooking.Model.Notification> listRequestNotification = (List<com.housebooking.Model.Notification>) ss
				.getAttribute("listRequestNotification");
		NotificationDAO notificationDAO = new NotificationDAO();
		for (com.housebooking.Model.Notification item : listRequestNotification) {
			notificationDAO.Seen(item.getId());
		}
		ss.setAttribute("listRequestNotification", null);
		String path = request.getParameter("path");

		if (path.contains("dashboard.jsp")) {
			response.sendRedirect("dashboard");
		} else if (path.contains("building.jsp")) {
			response.sendRedirect("manage");
		} else if (path.contains("request.jsp")) {
			response.sendRedirect("manage-bill");
		} else if (path.contains("invoice.jsp")) {
			response.sendRedirect("invoice-manage");
		} else {
			response.sendRedirect("dashboard");
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

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		if(userSession != null) {
			Notification(request, response);
		}
		
		BillDAO billDAO = new BillDAO();
		String userID = userSession.getUser().getUserId();

		List<Bill> listRequestToday = billDAO.list(userID);
		HashMap<String, Double> listPercentByBuilding = billDAO.listPercentByBuilding(userID);
		List<Integer> AmountBillInThisWeek = billDAO.getBillInThisWeek(userID);
		List<Integer> AmountBillInLastWeek = billDAO.getBillInLastWeek(userID);
		List<Integer> AmountBill2WeeksAgo = billDAO.getBill2WeeksAgo(userID);
		List<Integer> Tuannay = billDAO.getTotalInThisWeek(userID);
		LinkedHashMap<String, Integer> listLast12MonthBillAmount = billDAO.getLast12MonthBillAmount(userID);
		LinkedHashMap<String, Integer> listLast12MonthBillTotal = billDAO.getLast12MonthBillTotal(userID);
		int amountBillInLast12Moth = 0;
		for (Integer i : listLast12MonthBillAmount.values()) {
			amountBillInLast12Moth += i;
		}
		int totalBillInLast12Moth = 0;
		for (Integer i : listLast12MonthBillTotal.values()) {
			totalBillInLast12Moth += i;
		}
		
		int TongTienTuanNay = 0;
		for (Integer i : Tuannay) {
			TongTienTuanNay += i;
		}

		request.setAttribute("TongTienTuanNay", TongTienTuanNay);
		request.setAttribute("Tuannay", Tuannay);
		request.setAttribute("totalBillInLast12Moth", totalBillInLast12Moth);
		request.setAttribute("amountBillInLast12Moth", amountBillInLast12Moth);
		request.setAttribute("listLast12MonthBillTotal", listLast12MonthBillTotal);
		request.setAttribute("listLast12MonthBillAmount", listLast12MonthBillAmount);
		request.setAttribute("AmountBill2WeeksAgo", AmountBill2WeeksAgo);
		request.setAttribute("AmountBillInThisWeek", AmountBillInThisWeek);
		request.setAttribute("AmountBillInLastWeek", AmountBillInLastWeek);
		request.setAttribute("listPercentByBuilding", listPercentByBuilding);
		request.setAttribute("listRequestToday", listRequestToday);

		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/dashboard.jsp");
		rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

}
