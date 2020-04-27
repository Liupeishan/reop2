package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.register.User;
import com.ithiema.service.UserService;


@SuppressWarnings("serial")
public class UserListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//传递请求到service层
		String id=request.getParameter("id");
		UserService service = new UserService();
		List<User> userList = null;
		try {
			userList = service.findUser(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("userList", userList);
		request.getRequestDispatcher("/html/content/listUser.jsp?id="+id).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
