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
import javax.servlet.http.HttpSession;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.DAOimpl.houseowner.BuildingDAO;
import com.housebooking.DAOimpl.houseowner.ServiceDAO;
import com.housebooking.DAOimpl.web.ConvenientDAO;
import com.housebooking.DAOimpl.web.FeedbackDAO;
import com.housebooking.DAOimpl.web.NotificationDAO;
import com.housebooking.DAOimpl.web.RoomDAO;
import com.housebooking.DAOimpl.web.WebBuildingDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Feedback;
import com.housebooking.Model.Notification;
import com.housebooking.Model.Room;
import com.housebooking.Model.Service;
import com.housebooking.Model.UserSession;

@WebServlet("/single-post")
public class PostController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PostController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void Process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action != null && !action.equalsIgnoreCase("")) {
			switch (action) {
			case "comment":
				doComment(request, response);
				break;
			default:
				doDisplay(request, response);
				break;
			}
		} else {
			doDisplay(request, response);
		}

	}

	protected void doComment(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("usersession");
		
		int rating = Integer.parseInt(request.getParameter("rating"));
		//String name = request.getParameter("name");
		//String email = request.getParameter("email");
		String comment = request.getParameter("message");
		String buildingId = request.getParameter("buildingId");
		String replyTo = request.getParameter("replyTo");
		int report = 0;
		Date date = new Date(System.currentTimeMillis());
		String status = "On";
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		String feedbackId = "fb_" + feedbackDAO.Count();
		
		Feedback feedback = new Feedback(feedbackId, comment, rating, status, date, report, buildingId, userSession.getUser(),replyTo);
		
		
	
		if(feedbackDAO.add(feedback)) {
			request.setAttribute("mess", "Comment thành công!");
			NotificationDAO notificationDAO = new NotificationDAO();
			com.housebooking.DAOimpl.admin.BuildingDAO buildingDAO = new com.housebooking.DAOimpl.admin.BuildingDAO();
			Building building = buildingDAO.Find(buildingId);
			Notification notification = new Notification("notification_" + (notificationDAO.Count() + 1), building.getUserId(), date, "Bình luận mới", "unseen", feedbackId);
			notificationDAO.add(notification);
		}
		else {
			request.setAttribute("mess", "Comment không thành công!");
		}

		doDisplay(request, response);
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String buildingId = request.getParameter("buildingId");
		
		WebBuildingDAO webBuildingDAO = new WebBuildingDAO();
		
		Building building = webBuildingDAO.find(buildingId);

		IRoomDAO roomDAO = new RoomDAO();

//		Room room = roomDAO.find(roomId);

		ConvenientDAO convenientDAO = new ConvenientDAO();
		
		ServiceDAO serviceDAO = new ServiceDAO();
		
		List<Service> listService = serviceDAO.listService(buildingId);

		List<Convenient> listConvenient = convenientDAO.list(buildingId);

		String readCmt = request.getParameter("action");
		
		List<Feedback> listFeedback;
		
		if(readCmt != null && readCmt.equals("ReadAllComment")) {
			listFeedback =  new FeedbackDAO().list(buildingId, 0, 1000);
		}
		else {
			listFeedback =  new FeedbackDAO().list(buildingId, 0, 3);
		}
		
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
		
		String price = request.getParameter("price");
		
		List<Room> listRoom;
		
		if(price != null && !price.equals("")) {
			String[] priceRange = price.split("-");
			float startPrice = Float.parseFloat(priceRange[0]);
			float endPrice = Float.parseFloat(priceRange[1]);
			listRoom = ((RoomDAO)roomDAO).list(date1, date2, buildingId, startPrice, endPrice);
		}
		else {
			listRoom = ((RoomDAO)roomDAO).list(date1, date2, buildingId, 0, 100000000);
		}
		
		request.setAttribute("listService", listService);
		request.setAttribute("listFeedback", listFeedback);
		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("listRoom", listRoom);
		request.setAttribute("building", building);

		RequestDispatcher rd = request.getRequestDispatcher("/view/web/single-post.jsp");
		rd.forward(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Process(request, response);
	}

}
