
package com.housebooking.controller.admin;

import com.housebooking.DAOimpl.web.AdminDAO;
import com.housebooking.Model.Room;
import com.housebooking.Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ACER
 */
@WebServlet(name = "AdminControl", urlPatterns = { "/AdminControl" })
public class AdminControl extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String action = request.getParameter("action");
		System.out.println(action);
		if (action == null || action.equalsIgnoreCase("")) {
			doDisplay(request, response);
		} else {
			String rID = request.getParameter("rID");
			AdminDAO dao = new AdminDAO();

			switch (action) {
			case "deny":
				dao.setRoomHiddenStatusByID(rID);
				break;
			case "approve":
				dao.setRoomStatusByID(rID);
				break;

			default:
				doDisplay(request, response);
				break;
			}

			doDisplay(request, response);
		}

	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminDAO dao = new AdminDAO();
		List<Room> list = dao.getAllRoom();
		request.setAttribute("listR", list);
		request.getRequestDispatcher("/view/admin/Dashmin.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
