package com.housebooking.controller.homeowner;

import java.io.IOException;
import java.sql.Date;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.print.attribute.standard.Chromaticity;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAOimpl.houseowner.BillDAO;
import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.DAOimpl.houseowner.ServiceDAO;
import com.housebooking.Model.Bill;
import com.housebooking.Model.Room;
import com.housebooking.Model.ServiceUsed;
import com.housebooking.Model.User;

@WebServlet("/manage-BillDetail")
public class BillDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void Proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String billId = request.getParameter("billId");
		
		BillDAO billDAO = new BillDAO();
		UserDAO userDAO = new UserDAO();
		RoomDAO roomDAO = new RoomDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
		
		Bill bill = billDAO.Find(billId);
		User user = userDAO.find(bill.getUserId());
		Room room = roomDAO.Find(bill.getBillDetail().get(0).getRoomId());
		List<ServiceUsed> listServiceUsed = serviceDAO.listServiceUsed(billId, room.getRoomId());
		
		int dateRange = DateRange(bill.getBillDetail().get(0).getStartDate(), bill.getBillDetail().get(0).getEndDate());
		
		request.setAttribute("listServiceUsed", listServiceUsed);
		request.setAttribute("room", room);
		request.setAttribute("dateRange", dateRange);
		request.setAttribute("user", user);
		request.setAttribute("bill", bill);
		doDisplay(request, response);
	}
	
	private int DateRange(Date d1, Date d2) {
		try {
		    LocalDate dateBefore = LocalDate.parse(d1.toString());
		    LocalDate dateAfter = LocalDate.parse(d2.toString());

		    // Approach 1
		    int daysDiff = (int) ChronoUnit.DAYS.between(dateBefore, dateAfter);
		    return daysDiff;
		}catch(Exception e){
		    e.printStackTrace();
		}
		
		return 0;
	}
	
    public BillDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/invoiceDetail.jsp");
        rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

}
