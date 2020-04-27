package com.ithiema.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.ithiema.content.Method;
import com.ithiema.service.MethodService;


@SuppressWarnings("serial")
public class UpdateMethodServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//传递请求到service层
		String id=request.getParameter("id");
		String tname=request.getParameter("tname");
		tname = new String(tname.getBytes("iso8859-1"),"UTF-8");
		Map<String, String[]> properties = request.getParameterMap();
		Method method=new Method();
		MethodService service = new MethodService();
		//method.getId();
		try {
			BeanUtils.populate(method, properties);
			service.updateMethod(tname,method);
		} catch (SQLException | IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect(request.getContextPath()+"/methodList?id="+id);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}

