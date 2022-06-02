package com.housebooking.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.RoomDAO;
import com.housebooking.Model.Room;

@WebServlet("/booking")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

        String filter = request.getParameter("filter");

        if(filter == null) {
        	doDisplay(request, response);
        }
		
	}
	
	protected void doDisplay (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		IRoomDAO roomDAO = new RoomDAO();
		Room room = roomDAO.find("Room_01");
		
		request.setAttribute("room", room);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/booking.jsp");
        rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
