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

import com.ithiema.register.User;
import com.ithiema.service.UserService;

@SuppressWarnings("serial")
public class updateUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置request的编码---只适合post方式
		request.setCharacterEncoding("UTF-8");
		
		Map<String, String[]> properties = request.getParameterMap();
		String id=request.getParameter("id");
		UserService service = new UserService();
		User user = new User();
		try {
			BeanUtils.populate(user, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		user.setId(id);
		//3、将参数传递给一个业务操作方法
		try {
			service.updateUser(user,id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//4、认为注册成功跳转到登录页面
		response.sendRedirect(request.getContextPath()+"/userList?id="+id);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}


	
}
