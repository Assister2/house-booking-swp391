package com.housebooking.controller.homeowner;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InvoiceController
 */
@WebServlet("/invoice-manage")
public class InvoiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void Proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doDisplay(request, response);
	}
	
	protected void doDisplay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/invoice.jsp");
		rd.forward(request, response);
	}
	
    public InvoiceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Proccess(request, response);
	}

}
