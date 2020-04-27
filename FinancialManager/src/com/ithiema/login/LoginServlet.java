package com.ithiema.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.handlers.BeanHandler;

import com.ithiema.register.User;
import com.ithiema.utils.TxQueryRunner;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//1、获得用户名和密码
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upassword");
		
		//2、调用一个业务方法进行该用户查询
		User login = null;
		try {
			login = login(uname,upassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//3、通过user是否为null判断用户名和密码是否正确
		if(login!=null){
			//用户名和密码正确
			//登录成功 跳转到网站的首页
			response.sendRedirect(request.getContextPath()+"/html/functionframe.jsp?id="+login.getId());
		}else{
			//用户名或密码错误
			//跳回当前login.jsp
			//使用转发 转发到login.jsp  向request域中存储错误信息
			request.setAttribute("loginInfo", "用户名或密码错误");
			//response.sendRedirect(request.getContextPath()+"/html/login.jsp");
			request.getRequestDispatcher("/html/login.jsp").forward(request, response);
		}
		
	}
	
	public User login(String uname,String upassword) throws SQLException{
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "select * from member where uname=? and upassword=?";
		User user = runner.query(sql, new BeanHandler<User>(User.class), uname,upassword);
		return user;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}

