package com.housebooking.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

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
import com.housebooking.DAOimpl.web.RuleDAO;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Feedback;
import com.housebooking.Model.Room;
import com.housebooking.Model.Rule;
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
		String roomId = request.getParameter("roomId");
		int report = 0;
		Date date = new Date(System.currentTimeMillis());
		String status = "On";
		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String feedbackId = dateTime.toString();
		
		Feedback feedback = new Feedback(feedbackId, comment, rating, status, date, report, roomId, userSession.getUser());
		
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
		String roomId = request.getParameter("roomId");

//		IRoomDAO roomDAO = new RoomDAO();
//
//		Room room = roomDAO.find(roomId);

		ConvenientDAO convenientDAO = new ConvenientDAO();

		List<Convenient> listConvenient = convenientDAO.list(roomId);

		List<Feedback> listFeedback = new FeedbackDAO().list(roomId);

		List<Rule> listRule = new RuleDAO().list(roomId);
		
		List<Room> listNearRoom = ((RoomDAO)roomDAO).nearRoom(roomId);

		request.setAttribute("listRule", listRule);
		request.setAttribute("listFeedback", listFeedback);
		request.setAttribute("listConvenient", listConvenient);
		//request.setAttribute("listNearRoom", listNearRoom);
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
