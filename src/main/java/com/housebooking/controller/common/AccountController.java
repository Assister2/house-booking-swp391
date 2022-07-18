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

import com.housebooking.DAOimpl.houseowner.BillDAO;
import com.housebooking.DAOimpl.web.UserDAO;
import com.housebooking.Model.Bill;
import com.housebooking.Model.User;
import com.housebooking.Model.UserSession;

/**
 * Servlet implementation class AccountController
 */
@WebServlet("/my-account")
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void Proccess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		HttpSession ss = request.getSession();
		UserSession us = (UserSession) ss.getAttribute("usersession");

		if (us == null) {
			response.sendRedirect(request.getContextPath() + "/login");
		} else {
			String action = request.getParameter("action");
			if (action == null) {
				doGet_DisplayInfor(request, response);
			} else {
				if (action.equalsIgnoreCase("updatePassword")) {
					doPost_UpdatePassword(request, response, us);
				} else if (action.equalsIgnoreCase("updateInfor")) {
					doPost_UpdateInfor(request, response, us);
				} 
				
			}
		}

	}

	private void doGet_DisplayInfor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BillDAO billDAO = new BillDAO();
		HttpSession ss = request.getSession();
		UserSession us = (UserSession) ss.getAttribute("usersession");
		
		List<Bill> listBill = billDAO.GetOrderHistory(us.getUser().getUserId());
		
		request.setAttribute("listBill", listBill);
		RequestDispatcher rd = request.getRequestDispatcher("/view/common/myaccount.jsp");
		rd.forward(request, response);
	}

	private void doPost_UpdatePassword(HttpServletRequest request, HttpServletResponse response, UserSession us)
			throws ServletException, IOException {

		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String rePassword = request.getParameter("rePassword");

		UserDAO manager = new UserDAO();
		String msg;

		RequestDispatcher rd = request.getRequestDispatcher("views/common/AccountInformation.jsp");

		if (!newPassword.equals(rePassword)) {
			msg = "Mật khẩu xác nhận không khớp";
		} else {
			int changeResult = manager.changePassword(us.getUser(), oldPassword, newPassword);

			if (changeResult > 0) {
//                msg = "Mật khẩu đã thay đổi thành công";
				HttpSession ss = request.getSession(true);
				ss.setAttribute("changed", "Mật khẩu đã thay đổi thành công");
				String role = us.getUser().getRole();
				if (role.equalsIgnoreCase("admin")) {
					response.sendRedirect(request.getContextPath() + "/admin");
				} else {
					response.sendRedirect(request.getContextPath() + "/home");
				}
				return;
			} else if (changeResult == -1) {
				msg = "Mật khẩu không đúng, vui lòng nhập lại";
			} else {
				msg = "Thay đổi mật khẩu thất bại";
			}
		}
		request.setAttribute("msg", msg);
		rd.forward(request, response);
	}

	private void doPost_UpdateInfor(HttpServletRequest request, HttpServletResponse response, UserSession us)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phoneNumber");
		String address = request.getParameter("address");

		User user = us.getUser();
		user.setName(name);
		user.setPhoneNumber(phoneNumber);

		String updateMsg = "";
		boolean isFailed = true;
		UserDAO manager = new UserDAO();
		if (manager.updateInformation(user)) {
			updateMsg = "Cập nhật thông tin cá nhân thành công";
			isFailed = false;
		} else {
			updateMsg = "Cập nhật thông tin thất bại";
		}
		if (!isFailed) {
			request.setAttribute("ismsg", updateMsg); // information success msg
		} else {
			request.setAttribute("ifmsg", updateMsg); // infotmarion fail msg
		}
		RequestDispatcher rd = request.getRequestDispatcher("views/common/AccountInformation.jsp");
		rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Proccess(request, response);
	}

}
