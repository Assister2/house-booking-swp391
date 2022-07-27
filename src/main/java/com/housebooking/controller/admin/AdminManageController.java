
package com.housebooking.controller.admin;

import com.housebooking.DAOimpl.admin.BuildingDAO;
import com.housebooking.DAOimpl.web.AdminDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Room;
import com.housebooking.Model.User;
import com.housebooking.Model.UserSession;

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
@WebServlet(name = "AdminControl", urlPatterns = { "/AdminManage" })
public class AdminManageController extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String action = request.getParameter("action");
		// System.out.println(action);
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

		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");

		String properties = request.getParameter("properties");
		String detailProperties = request.getParameter("detailProperties");
		
		BuildingDAO buildingDAO = new BuildingDAO();
		
		// Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 7;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<Building> list = buildingDAO.list((page - 1) * recordsPerPage, recordsPerPage, properties!=null?properties:"", detailProperties!=null?detailProperties:"");
		
		// Nay la tat ca
		int totalRecords = buildingDAO.list(-1, -1, properties!=null?properties:"", detailProperties!=null?detailProperties:"").size();

		// Tinh so trang
		int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/view/admin/request.jsp").forward(request, response);
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
