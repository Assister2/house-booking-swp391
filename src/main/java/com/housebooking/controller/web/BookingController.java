package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.web.BuildingDAO;
import com.housebooking.DAOimpl.web.ConvenientDAO;
import com.housebooking.DAOimpl.web.DistrictDAO;
import com.housebooking.DAOimpl.web.RoomDAO;
import com.housebooking.DAOimpl.web.TypeOfRoomDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.District;
import com.housebooking.Model.Room;
import com.housebooking.Model.TypeOfRoom;

@WebServlet("/booking")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookingController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		//String filter = request.getParameter("filter");

		doDisplay(request, response);

	}

	//Without filter
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String city = request.getParameter("city");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		LocalDate date1 = LocalDate.now();
		LocalDate date2 = LocalDate.now();
		
		if(!(startDate == null) && !(endDate == null)) {
			try {
		        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy", Locale.ENGLISH);
		        date1 = LocalDate.parse(startDate, formatter);
		        date2 = LocalDate.parse(endDate, formatter);
			} catch (Exception e) {
			}
		}
		
		IRoomDAO roomDAO = new RoomDAO();
		
		//Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 6;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int totalRecords = ((RoomDAO)roomDAO).getTotalRecord();
		
		//Lay tham so loai cho o
		String[] buildingType = null;
		if (request.getParameterValues("buildingType") != null) {
            buildingType = request.getParameterValues("buildingType");            
        }
		
		//Lay concept
		String[] concept = null;
		if (request.getParameterValues("concept") != null) {
            concept = request.getParameterValues("concept");
        }
		
		//Lay loai tien nghi
		String[] convenient = null;
		if (request.getParameterValues("convenientOption") != null) {
			convenient = request.getParameterValues("convenientOption");
        }
		
		double rating = request.getParameter("rating")==null?0:Double.parseDouble(request.getParameter("rating"));
		//System.out.println((int)rating);
		
		//Lay quan huyen
		String[] district = null;
		if (request.getParameterValues("districtOption") != null) {
			district = request.getParameterValues("districtOption");
        }
		
		//Lay huong sort
		String sort = request.getParameter("sort")==null?"":request.getParameter("sort");
		
        List<Room> listRoom;
        List<District> listDistrict;
        
        if(city == null) {
        	listRoom = roomDAO.list((page - 1) * recordsPerPage, recordsPerPage);
        }
        else {
        	listRoom = ((RoomDAO)roomDAO).list(city, date1, date2, buildingType, 
        			concept, convenient, (int)rating, district, sort, (page - 1) * recordsPerPage, recordsPerPage);
        	totalRecords = ((RoomDAO)roomDAO).getTotalRecord(city, date1, date2);
        }
        
        // Tinh so trang
        int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);
      
        listDistrict = new DistrictDAO().list(city);
        
        
        request.setAttribute("districtChoose", district);
        request.setAttribute("ratingScale", rating);
        request.setAttribute("convenientChoose", convenient);
        request.setAttribute("conceptChoose", concept);
        request.setAttribute("buildingType", buildingType);
        request.setAttribute("listDistrict", listDistrict);
		request.setAttribute("totalRecords", totalRecords);
		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("listRoom", listRoom);
		defaulItem(request, response);

		RequestDispatcher rd = request.getRequestDispatcher("/view/web/booking.jsp");
		rd.forward(request, response);
	}
	
	protected void defaulItem(HttpServletRequest request, HttpServletResponse response) {
		List<Convenient> listConvenient = new ConvenientDAO().list();
		List<TypeOfRoom> listTypeOfRoom = new TypeOfRoomDAO().list();
		List<Building> listBuildingType = new BuildingDAO().listBuildingType();		
		
		request.setAttribute("listBuildingType", listBuildingType);
		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("listType", listTypeOfRoom);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}