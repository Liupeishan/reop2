package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.service.ItemsService;

@SuppressWarnings("serial")
public class ItemsDeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//传递请求到service层
		String id=request.getParameter("id");
		String content=request.getParameter("content");
		String table=request.getParameter("table");
		content = new String(content.getBytes("iso8859-1"),"UTF-8");
		table = new String(table.getBytes("iso8859-1"),"UTF-8");
		//System.out.println(content);
		ItemsService service = new ItemsService();
		try {
			service.deleteItems(content,table);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect(request.getContextPath()+"/itemsList?id="+id+"&table="+table);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
