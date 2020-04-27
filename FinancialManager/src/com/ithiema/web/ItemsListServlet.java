package com.ithiema.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ithiema.content.ItemsList;
import com.ithiema.service.ItemsService;

@SuppressWarnings("serial")
public class ItemsListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//传递请求到service层
		String id=request.getParameter("id");
		String table=request.getParameter("table");
		String tableInfo=null;
		table = new String(table.getBytes("iso8859-1"),"UTF-8");
		//System.out.println(table);
		ItemsService service=new ItemsService();
		List<ItemsList> itemsList = null;
		try {
			itemsList = service.findItems(id,table);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(table.equals("fixedasset")) {
			tableInfo="净现值NPV";
		}else if(table.equals("investment")){
			tableInfo="必要报酬率";
		}else if(table.equals("project")) {
			tableInfo="所需资金";
		}else if(table.equals("debt")) {
			tableInfo="平均资本成本";
		}else {
			tableInfo="总成本";
		}
		request.setAttribute("tableInfo", tableInfo);
		request.setAttribute("itemsList", itemsList);
		request.getRequestDispatcher("/html/content/listItems.jsp?id="+id+"&table="+table).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
