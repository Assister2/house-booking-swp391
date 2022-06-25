package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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
import com.housebooking.DAOimpl.web.ConvenientDAO;
import com.housebooking.DAOimpl.web.FeedbackDAO;
import com.housebooking.DAOimpl.web.RoomDAO;
import com.housebooking.DAOimpl.web.WebBuildingDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Feedback;
import com.housebooking.Model.Room;
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
		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String feedbackId = dateTime.toString();
		
		Feedback feedback = new Feedback(feedbackId, comment, rating, status, date, report, buildingId, userSession.getUser(),replyTo);
		
		FeedbackDAO feedbackDAO = new FeedbackDAO();
	
		if(feedbackDAO.add(feedback)) {
			request.setAttribute("mess", "Comment thành công!");
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

		List<Convenient> listConvenient = convenientDAO.list(buildingId);

		List<Feedback> listFeedback = new FeedbackDAO().list(buildingId);
		
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
		
		List<Room> listRoom = ((RoomDAO)roomDAO).list(date1, date2, buildingId);

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
