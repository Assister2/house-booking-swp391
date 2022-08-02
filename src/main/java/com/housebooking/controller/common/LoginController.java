package com.housebooking.controller.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.web.AccessManager;
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.Model.Notification;
import com.housebooking.Model.UserSession;

import com.accessgoogle.common.GooglePojo;
import com.accessgoogle.common.GoogleUtils;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserSession us = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	protected void doLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AccessManager accessManager = new AccessManager();
		if ((username == null) && (password == null) && (code == null)) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/common/login.jsp");
			rd.forward(request, response);
		} else if ((username == null) && (password == null) && (code != null)) {
			String accessToken = GoogleUtils.getToken(code);
			GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
			String id = googlePojo.getId();
			String name = googlePojo.getName();
			String email = googlePojo.getEmail();
			us = accessManager.loginGoogle(id, name, email);
			doDisplay(request, response);
		} else if ((username != null) && (password != null) && (code == null)) {
			us = accessManager.login(username, password);
			doDisplay(request, response);
		}

	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ss = request.getSession(true);
		if (us.getUser() != null) {
			if (us.getUser().getStatus().equals("ban")) {
				request.setAttribute("login_mess", "Tài khoản của bạn đã bị khóa");
				RequestDispatcher rd = request.getRequestDispatcher("/view/common/login.jsp");
				rd.forward(request, response);
			} else {
				ss.setAttribute("usersession", us);
				List<Notification> listNotification = new NotificationDAO().list(us.getUser().getUserId());
				ss.setAttribute("listNotification", listNotification);
				switch (us.getUser().getRole()) {
				case "Admin":
					response.sendRedirect(request.getContextPath() + "/AdminDashboard");
					break;
				case "Owner":
					response.sendRedirect(request.getContextPath() + "/dashboard");
					break;
				case "User":
					response.sendRedirect(request.getContextPath() + "/home");
					break;
				}
			}
		} else {
			request.setAttribute("login_mess", "Tên đăng nhập hoặc mật khẩu không đúng");
			RequestDispatcher rd = request.getRequestDispatcher("/view/common/login.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// processRequest(request, response);
		doLogin(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// processRequest(request, response);
		doLogin(request, response);
	}

}