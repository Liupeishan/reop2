package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.content.Tactics;
import com.ithiema.service.MethodService;


@SuppressWarnings("serial")
public class MethodListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//传递请求到service层
		String id=request.getParameter("id");
		MethodService service = new MethodService();
		List<Tactics> methodList = null;
		try {
			methodList = service.findAllMethod(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("methodList", methodList);
		request.getRequestDispatcher("/html/content/listMethod.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
