package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.service.MethodService;


@SuppressWarnings("serial")
public class MethodDeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//传递请求到service层
		String id=request.getParameter("id");
		String tname=request.getParameter("tname");
		tname = new String(tname.getBytes("iso8859-1"),"UTF-8");
		MethodService service = new MethodService();
		try {
			service.deleteMethod(tname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect(request.getContextPath()+"/methodList?id="+id);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
