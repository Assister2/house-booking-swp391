package com.housebooking.controller.homeowner;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.Model.Room;

/**
 * Servlet implementation class BuildingDetailController
 */
@WebServlet("/building-detail")
public class BuildingDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void Process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "AddNewRoom":

				break;
			case "DeleteRoom":

				break;
			case "UpdateRoom":

				break;

			default:
				doDisplay(request, response);
				break;
			}
		}

	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String buildingId = request.getParameter("buildingId");
		
		RoomDAO roomDAO = new RoomDAO();
		
		List<Room> listRoom = roomDAO.list(buildingId);
		
		request.setAttribute("listRoom", listRoom);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/room.jsp");
		rd.forward(request, response);
	}

	public BuildingDetailController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
