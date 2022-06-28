package com.housebooking.controller.homeowner;

import java.io.File;
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

import com.housebooking.DAOimpl.houseowner.BuildingDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;

 
@WebServlet("/manage")
public class ManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private boolean isMultipart;
	   private String filePath;
	   private int maxFileSize = 500 * 1024;
	   private int maxMemSize = 300 * 1024;
	   private File file ;
       
    public ManageController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void Process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String action = request.getParameter("action");
		filePath = getServletContext().getInitParameter("file-upload"); 

		doDisplay(request, response);
	}

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Process(request, response);
	}

	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//String buildingID = request.getParameter("buildingID");
		
		BuildingDAO buildingDAO = new BuildingDAO();
		
		List<Building> listBuilding;
		List<Service> listService;
		List<Service> listServiceAllowToAdd;
		List<Convenient> listConvenient;
		List<Convenient> listConvenientAllowToAdd;
		
		listBuilding = buildingDAO.list("User_01");
		
		listService = buildingDAO.listService(listBuilding);
		
		listServiceAllowToAdd = buildingDAO.listServiceAllowToAdd(listBuilding);
		
		listConvenient = buildingDAO.listConvenient(listBuilding);
		
		listConvenientAllowToAdd = buildingDAO.listConvenientAllowToAdd(listBuilding);
		
		
		request.setAttribute("listBuilding", listBuilding);
		request.setAttribute("listService", listService);
		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("listServiceAllowToAdd", listServiceAllowToAdd);
		request.setAttribute("listConvenientAllowToAdd", listConvenientAllowToAdd);
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/building.jsp");
		rd.forward(request, response);
	}
}