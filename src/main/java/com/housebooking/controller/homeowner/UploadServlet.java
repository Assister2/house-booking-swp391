package com.housebooking.controller.homeowner;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/upload")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String description = request.getParameter("description");
		System.out.println(description);
		
		String relativeWebPath = "/view/common/image/building/";
		String absoluteFilePath = getServletContext().getRealPath(relativeWebPath);
		
		try {
			Part part = request.getPart("file");
			part.write(absoluteFilePath + getFileName(part));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("message", description);
		request.getRequestDispatcher("/view/house-owner/message.jsp").forward(request, response);
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

}
