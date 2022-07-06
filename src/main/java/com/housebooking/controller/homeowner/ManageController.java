package com.housebooking.controller.homeowner;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.housebooking.DAOimpl.houseowner.BuildingDAO;
import com.housebooking.DAOimpl.houseowner.StreetDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Convenient;
import com.housebooking.Model.Service;
import com.housebooking.Model.UserSession;

@WebServlet("/manage")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Save_Dir = "D:\\Workspace\\Eclipse\\house-booking-swp391\\src\\main\\webapp\\view\\common\\image\\building\\";

	public ManageController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void Process(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");
		
		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "AddNewBuilding":
				
				break;
			case "update":

				break;
			case "hide":

				break;
			case "test":
				AddNewBuilding(request, response);
				break;

			default:
				doDisplay(request, response);
				break;
			}
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void AddNewBuilding(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  
		LocalDateTime dateTime = LocalDateTime.now().plus(Duration.of(10, ChronoUnit.MINUTES));
		String buildingId = dateTime.toString();
		String buildingName = request.getParameter("Add_buildingName");
		String buildingNumber = request.getParameter("Add_buildingNumber");
		float area = 0;
		if(!(request.getParameter("Add_area") == null) && !request.getParameter("Add_area").equals("")) {
			area = Float.parseFloat(request.getParameter("Add_area"));
		}		
		String buildingType = request.getParameter("Add_buildingType");
		String buildingInfor = request.getParameter("Add_Infor");
		String buildingRules = request.getParameter("Add_Rules");
		String buildingDescrip = request.getParameter("Add_Descrip");
		String buidingStatus = "Waiting";
		
		String city = request.getParameter("Add_city");
		String district = request.getParameter("Add_disctrict");
		String street = request.getParameter("Add_street");
		
		StreetDAO streetDAO = new StreetDAO();
		String streetNumber = streetDAO.GetStreetNumber(city, district, street);
		String imageLink = "";
		HttpSession ss = request.getSession(true);
		UserSession userSession = (UserSession) ss.getAttribute("usersession");
		
		try {
			Part part = request.getPart("image");
			part.write(Save_Dir + getFileName(part));
			imageLink = "/view/common/image/building/" + getFileName(part);
			
			Building building = new Building(buildingId, buildingDescrip, buildingName
					, buildingType, buildingRules, buidingStatus, imageLink
					, null, streetNumber, userSession.getUser().getUserId(), 0, 0, area, buildingInfor, buildingNumber);
			
			if(new BuildingDAO().AddNewBuilding(building)) {
				request.setAttribute("message", "Thêm thành công!");
			}
			else {
				request.setAttribute("message", "Thêm thất bại!");
			}
		} catch (Exception e) {
			request.setAttribute("message", "Có lỗi xảy ra");
		}
		finally {
			doDisplay(request, response);  
		}		
	}
	
	private String getFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		if(!contentDisp.contains("filename=")) {
			return null;
		}
		
		int beginIndex = contentDisp.indexOf("filename=")+10;
		int endIndex = contentDisp.length() -1;
		
		return contentDisp.substring(beginIndex, endIndex);
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession) session.getAttribute("usersession");

		// String buildingID = request.getParameter("buildingID");

		BuildingDAO buildingDAO = new BuildingDAO();

		List<Building> listBuilding;
		List<Service> listService;
		List<Service> listServiceAllowToAdd;
		List<Convenient> listConvenient;
		List<Convenient> listConvenientAllowToAdd;

		listBuilding = buildingDAO.list(userSession.getUser().getUserId());

		listService = buildingDAO.listService(listBuilding);

		listServiceAllowToAdd = buildingDAO.listServiceAllowToAdd(listBuilding);

		listConvenient = buildingDAO.listConvenient(listBuilding);

		listConvenientAllowToAdd = buildingDAO.listConvenientAllowToAdd(listBuilding);

		request.setAttribute("listBuilding", listBuilding);
		request.setAttribute("listService", listService);
		request.setAttribute("listConvenient", listConvenient);
		request.setAttribute("listServiceAllowToAdd", listServiceAllowToAdd);
		request.setAttribute("listConvenientAllowToAdd", listConvenientAllowToAdd);
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/building.jsp");
		rd.forward(request, response);
	}
}