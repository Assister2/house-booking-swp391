package com.housebooking.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAOimpl.admin.BillDAO;
import com.housebooking.DAOimpl.admin.BuildingDAO;
import com.housebooking.DAOimpl.admin.UserDAO;

/**
 * Servlet implementation class DashboardController
 */
@WebServlet(name = "AdminDashboardController", urlPatterns = { "/AdminDashboard" })
public class DashboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void Proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String action = request.getParameter("action");
		// System.out.println(action);
		if (action == null || action.equalsIgnoreCase("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			
			default:
				doDisplay(request, response);
				break;
			}
		
		}
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BuildingDAO buildingDAO = new BuildingDAO();
		UserDAO userDAO = new UserDAO();
		BillDAO billDAO = new BillDAO();
		
		int totalBill = billDAO.TotalBill();
		int owner = userDAO.OwnerCount();
		int user = userDAO.NormalUserCount();
		int totalPost = buildingDAO.list(-1, -1, "", "").size();
		List<Integer> Thongke = buildingDAO.GetStatistic();
		
		request.setAttribute("Thongke", Thongke);
		request.setAttribute("totalBill", totalBill);
		request.setAttribute("user", user);
		request.setAttribute("owner", owner);
		request.setAttribute("totalPost", totalPost);
		request.getRequestDispatcher("/view/admin/dashboard.jsp").forward(request, response);
	}
	
    public DashboardController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

}
