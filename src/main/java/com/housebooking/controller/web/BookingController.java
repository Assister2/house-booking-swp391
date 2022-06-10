package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.ConvenientDAO;
import com.housebooking.DAOimpl.DistrictDAO;
import com.housebooking.DAOimpl.RoomDAO;
import com.housebooking.DAOimpl.TypeOfRoomDAO;
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

		String filter = request.getParameter("filter");

		if (filter == null) {
			doDisplay(request, response);
		}

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
		
		int page = 1;
		int recordsPerPage = 6;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		//int noOfRecords = ((RoomDAO)roomDAO).getNoOfRecords();
		int totalRecords = ((RoomDAO)roomDAO).getTotalRecord();
        
        List<Room> listRoom;
        List<District> listDistrict;
        
        if(city == null) {
        	listRoom = roomDAO.list((page - 1) * recordsPerPage, recordsPerPage);
        }
        else {
        	listRoom = ((RoomDAO)roomDAO).list(city, date1, date2, "", (page - 1) * recordsPerPage, recordsPerPage);
        	totalRecords = ((RoomDAO)roomDAO).getTotalRecord(city, date1, date2);
        }
        
        int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);
      
        listDistrict = new DistrictDAO().list(city);
        
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
		
		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("listType", listTypeOfRoom);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}