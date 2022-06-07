package com.housebooking.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.ConvenientDAO;
import com.housebooking.DAOimpl.RoomDAO;
import com.housebooking.DAOimpl.TypeOfRoomDAO;
import com.housebooking.Model.Convenient;
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

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IRoomDAO roomDAO = new RoomDAO();
		
		int page = 1;
		int recordsPerPage = 6;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		int noOfRecords = ((RoomDAO)roomDAO).getNoOfRecords();
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
        int totalRecords = ((RoomDAO)roomDAO).getTotalRecord();
        
        List<Convenient> listConvenient = new ConvenientDAO().list();
        
		List<Room> listRoom = roomDAO.list((page - 1) * recordsPerPage, recordsPerPage);

		List<TypeOfRoom> listTypeOfRoom = new TypeOfRoomDAO().list();

		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("totalRecords", totalRecords);
		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("listRoom", listRoom);
		request.setAttribute("listType", listTypeOfRoom);

		RequestDispatcher rd = request.getRequestDispatcher("/view/web/booking.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
