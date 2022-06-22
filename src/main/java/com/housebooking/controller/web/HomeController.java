package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAOimpl.web.CityDAO;
import com.housebooking.Model.City;

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
		
		doDisplay(request, response);

//		String city = request.getParameter("city");
//		Date startDate = null;
//		Date endDate = null;
//		if(request.getParameter("startDate")!= null && request.getParameter("endDate")!= null) {
//			try {
//				startDate = Date.valueOf(request.getParameter("startDate"));
//				endDate = Date.valueOf(request.getParameter("endDate"));
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}
//		
//		if (city == null) {
//			doDisplay(request, response);
//		} else {
//			response.sendRedirect(request.getContextPath() +"/booking" + "?city=" + city + "&startDate=" + startDate + "&endDate=" + endDate);
//		}
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<City> listCity = new CityDAO().list();
		
		request.setAttribute("listCity", listCity);
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
