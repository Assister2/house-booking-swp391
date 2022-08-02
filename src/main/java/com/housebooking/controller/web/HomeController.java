package com.housebooking.controller.web;

import java.io.IOException;
import java.net.InetAddress;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.web.CityDAO;
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.Model.City;
import com.housebooking.Model.Notification;
import com.housebooking.Model.UserSession;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void Process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "readAllNotification":
				doReadAllNotification(request, response);
				break;
				
			default:
				doDisplay(request, response);
				break;
			}
		}

	}
	
	protected void doReadAllNotification(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		List<com.housebooking.Model.Notification> listNotification = (List<com.housebooking.Model.Notification>) ss
				.getAttribute("listNotification");
		NotificationDAO notificationDAO = new NotificationDAO();
		for (com.housebooking.Model.Notification item : listNotification) {
			notificationDAO.Seen(item.getId());
		}

		ss.setAttribute("listNotification", null);

		String path = request.getParameter("path");

		if (path.contains("home.jsp")) {
			response.sendRedirect("home");
		}  else {
			response.sendRedirect("home");
		}
		
	}
	
	private void Notification(HttpServletRequest request, HttpServletResponse response) {
		HttpSession ss = request.getSession(true);
		UserSession us = (UserSession) ss.getAttribute("usersession");
		
		List<Notification> listNotification = new NotificationDAO().list(us.getUser().getUserId());
		ss.setAttribute("listNotification", listNotification);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		UserSession us = (UserSession) ss.getAttribute("usersession");
		if(us != null) {
			Notification(request, response);
		}		
		List<City> listCity = new CityDAO().list();
		request.setAttribute("listCity", listCity);
		
		//System.out.println(request.getContextPath());
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/home.jsp");
		rd.forward(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Process(request, response);
	}

}
