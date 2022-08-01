package com.housebooking.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.housebooking.DAOimpl.admin.ConvenientDAO;
import com.housebooking.DAOimpl.admin.ServiceDAO;
import com.housebooking.DAOimpl.admin.UserDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;
import com.housebooking.Model.User;

@WebServlet("/AdminGeneralControl")
public class GeneralController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void Proccess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equalsIgnoreCase("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "ban":
				doBan(request, response);
				break;
			case "unban":
				doUnBan(request, response);
				break;
			case "deleteConve":
				doDeleteConve(request, response);
				break;
			case "deleteService":
				doDeleteService(request, response);
				break;
			case "addService":
				doAddService(request, response);
				break;
			default:
				doDisplay(request, response);
				break;
			}
		}
	}
	
	protected void doAddService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		
		ServiceDAO serviceDAO = new ServiceDAO();
		Service service = new Service();
		service.setServiceID("SV" + serviceDAO.listService().size());
		service.setServiceName(name);
		service.setDescription(description);
		service.setStatus("active");
		
		if(serviceDAO.AddService(service)) {
			request.setAttribute("message", "Thêm thành công");
		}
		else {
			request.setAttribute("message", "Thêm không thành công");
		}
		
		response.sendRedirect("AdminGeneralControl");
	}
	
	protected void doDeleteConve(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String conveId = request.getParameter("conveId");
		
		ConvenientDAO convenientDAO = new ConvenientDAO();
		if(convenientDAO.DeleteConvenient(conveId)) {
			request.setAttribute("message", "Xóa thành công");
		}
		else {
			request.setAttribute("message", "Xóa không thành công");
		}
		response.sendRedirect("AdminGeneralControl");
	}
	
	protected void doDeleteService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String serviceId = request.getParameter("serviceId");
		
		ServiceDAO serviceDAO = new ServiceDAO();
		if(serviceDAO.DeleteService(serviceId)) {
			request.setAttribute("message", "Xóa thành công");
		}
		else {
			request.setAttribute("message", "Xóa không thành công");
		}
		
		response.sendRedirect("AdminGeneralControl");
	}
	
	protected void doBan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		UserDAO userDAO = new UserDAO();
		if(userDAO.UpdateStatus(userId, "ban")) {
			request.setAttribute("message", "Cập nhật thành công");
		}
		else {
			request.setAttribute("message", "Cập nhật không thành công");
		}
		
		response.sendRedirect("AdminGeneralControl");
	}
	
	protected void doUnBan(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		UserDAO userDAO = new UserDAO();
		if(userDAO.UpdateStatus(userId, "active")) {
			request.setAttribute("message", "Cập nhật thành công");
		}
		else {
			request.setAttribute("message", "Cập nhật không thành công");
		}
		
		response.sendRedirect("AdminGeneralControl");
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ConvenientDAO convenientDAO = new ConvenientDAO();
		ServiceDAO serviceDAO = new ServiceDAO();
		UserDAO userDAO = new UserDAO();

		String search = request.getParameter("search");
		String properties = request.getParameter("properties");
		String detailProperties = request.getParameter("detailProperties");

		// Lay so trang hien tai
		int page = 1;
		int recordsPerPage = 5;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		List<User> listUser = userDAO.listUser((page - 1) * recordsPerPage, recordsPerPage,
				search != null ? search : "", properties != null ? properties: "", detailProperties != null?detailProperties:"");

		// Nay la tat ca
		int totalRecords = userDAO.listUser(-1, -1, search != null ? search : "",properties != null ? properties: "", detailProperties != null?detailProperties:"").size();

		// Tinh so trang
		int noOfPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

		request.setAttribute("currentPage", page);
		request.setAttribute("noOfPages", noOfPages);

		List<Service> listService = serviceDAO.listService();
		List<Convenient> listConvenient = convenientDAO.listConvenient();
		// List<User> listUser = userDAO.listUser();

		request.setAttribute("listUser", listUser);
		request.setAttribute("listService", listService);
		request.setAttribute("listConvenient", listConvenient);
		request.getRequestDispatcher("/view/admin/general.jsp").forward(request, response);
	}

	public GeneralController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Proccess(request, response);
	}

}
