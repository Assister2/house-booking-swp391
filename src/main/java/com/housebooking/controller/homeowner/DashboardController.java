package com.housebooking.controller.homeowner;

import java.io.IOException;
import java.util.HashMap;
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
import com.housebooking.Model.Bill;
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

		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		BillDAO billDAO = new BillDAO();
		String userID = userSession.getUser().getUserId();
		
		List<Bill> listRequestToday = billDAO.list(userID);
		HashMap<String, Double> listPercentByBuilding = billDAO.listPercentByBuilding(userID);
		List<Integer> AmountBillInThisWeek = billDAO.getBillInThisWeek(userID);
		List<Integer> AmountBillInLastWeek = billDAO.getBillInLastWeek(userID);
		List<Integer> AmountBill2WeeksAgo = billDAO.getBill2WeeksAgo(userID);
		LinkedHashMap<String, Integer> listLast12MonthBillAmount = billDAO.getLast12MonthBillAmount(userID);
		LinkedHashMap<String, Integer> listLast12MonthBillTotal = billDAO.getLast12MonthBillTotal(userID);
		int amountBillInLast12Moth = 0;
		for(Integer i : listLast12MonthBillAmount.values()) {
			amountBillInLast12Moth +=i;
		}
		int totalBillInLast12Moth = 0;
		for(Integer i : listLast12MonthBillTotal.values()) {
			totalBillInLast12Moth +=i;
		}
		
		request.setAttribute("totalBillInLast12Moth", totalBillInLast12Moth);
		request.setAttribute("amountBillInLast12Moth", amountBillInLast12Moth);
		request.setAttribute("listLast12MonthBillTotal", listLast12MonthBillTotal);
		request.setAttribute("listLast12MonthBillAmount", listLast12MonthBillAmount);
		request.setAttribute("AmountBill2WeeksAgo", AmountBill2WeeksAgo);
		request.setAttribute("AmountBillInThisWeek", AmountBillInThisWeek);
		request.setAttribute("AmountBillInLastWeek", AmountBillInLastWeek);
		request.setAttribute("listPercentByBuilding", listPercentByBuilding);
		request.setAttribute("listRequestToday", listRequestToday);
		

		doDisplay(request, response);
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
