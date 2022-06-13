package com.housebooking.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.web.RoomDAO;
import com.housebooking.Model.Room;

@WebServlet("/single-post")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PostController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void Process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String roomId = request.getParameter("roomId");
		
		IRoomDAO roomDAO = new RoomDAO();
		
		Room room = roomDAO.find(roomId);
		
		request.setAttribute("room", room);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/single-post.jsp");
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
