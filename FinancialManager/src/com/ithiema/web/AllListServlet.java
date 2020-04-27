package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.content.ItemsList;
import com.ithiema.register.User;
import com.ithiema.service.ItemsService;
import com.ithiema.service.UserService;

@SuppressWarnings("serial")
public class AllListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//传递请求到service层
		String id=request.getParameter("id");
		//System.out.println(table);
		ItemsService service=new ItemsService();
		UserService userservice=new UserService();
		List<User> user=null;
		List<ItemsList> fixedasset=null;
		List<ItemsList> investment=null;
		List<ItemsList> project=null;
		List<ItemsList> debt=null;
		List<ItemsList> chase=null;
		String outcome1;
		String outcome2;
		String outcome3;
		String outcome4;
		String outcome5;
		try {
			outcome1=service.equalByCash(id, "fixedasset");
			outcome2=service.equalByCash(id, "investment");
			outcome3=service.equalByCash(id, "project");
			outcome4=service.equalByCash(id, "debt");
			outcome5 = service.equalByCash(id, "chase");
			user=userservice.findUser(id);
			fixedasset=service.findItemsByContent(id, outcome1, "fixedasset");
			investment=service.findItemsByContent(id, outcome2, "investment");
			project=service.findItemsByContent(id, outcome3, "project");
			debt=service.findItemsByContent(id, outcome4, "debt");
			chase=service.findItemsByContent(id, outcome5, "chase");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("userList", user);
		request.setAttribute("fixedList", fixedasset);
		request.setAttribute("investList", investment);
		request.setAttribute("projectList", project);
		request.setAttribute("debtList", debt);
		request.setAttribute("chaseList", chase);
		request.getRequestDispatcher("/html/content/listAll.jsp?id="+id).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
