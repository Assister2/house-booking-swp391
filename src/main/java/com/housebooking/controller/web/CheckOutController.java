package com.housebooking.controller.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckOutController
 */
@WebServlet("/check-out")
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void Process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/web/checkout.jsp");
		rd.forward(request, response);
	}
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Process(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Process(request, response);
	}

}
