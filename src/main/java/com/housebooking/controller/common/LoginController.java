package com.housebooking.controller.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.housebooking.DAOimpl.web.AccessManager;
import com.housebooking.Model.UserSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if (action == null) {
			doDisplay(request, response);
		} else if (action.equals("login")) {
			doLogin(request, response);
		}

	}

	protected void doLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AccessManager accessManager = new AccessManager();
		UserSession us = accessManager.login(username, password);

		HttpSession ss = request.getSession(true);

		if (us.getUser() != null) {
			ss.setAttribute("usersession", us);
			switch (us.getUser().getRole()) {
			case "Admin":
				response.sendRedirect(request.getContextPath() + "/admin");
				break;
			case "Owner":
				response.sendRedirect(request.getContextPath() + "/dashboard");
				break;
			case "User":
				response.sendRedirect(request.getContextPath() + "/home");
				break;
			}
		} else {
			request.setAttribute("login_mess", "Tên đăng nhập hoặc mật khẩu không đúng");
			doDisplay(request, response);
		}
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/common/login.jsp");
		rd.forward(request, response);
	}

	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}