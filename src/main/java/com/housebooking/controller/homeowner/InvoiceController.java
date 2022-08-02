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
 * Servlet implementation class InvoiceController
 */
@WebServlet("/invoice-manage")
public class InvoiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void Proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doDisplay(request, response);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		if(userSession != null) {
			Notification(request, response);
		}
		
		String properties = request.getParameter("properties");
		String detailProperties = request.getParameter("detailProperties");

		BillDAO billDAO = new BillDAO();

		// Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 6;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<Bill> listBillDefault = billDAO.GetAllButNotDenied(userSession.getUser().getUserId(), (page - 1) * recordsPerPage,
				recordsPerPage, properties!=null?properties:"", detailProperties!=null?detailProperties:"");

		// Nay la tat ca
		int totalRecords = billDAO.GetAllButNotDenied(userSession.getUser().getUserId(), -1, -1,properties!=null?properties:"", detailProperties!=null?detailProperties:"").size();

		// Tinh so trang
		int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("listBillDefault", listBillDefault);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/invoice.jsp");
		rd.forward(request, response);
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
	
    public InvoiceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

}
