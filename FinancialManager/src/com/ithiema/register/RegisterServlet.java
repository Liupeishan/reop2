package com.ithiema.register;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.ithiema.utils.TxQueryRunner;

@SuppressWarnings("serial")
public class RegisterServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设置request的编码---只适合post方式
		request.setCharacterEncoding("UTF-8");

		//使用BeanUtils进行自动映射封装
		//BeanUtils工作原理：将map中的数据 根据key与实体的属性的对应关系封装
		//只要key的名字与实体的属性 的名字一样 就自动封装到实体中
		Map<String, String[]> properties = request.getParameterMap();
		User user = new User();
		try {
			BeanUtils.populate(user, properties);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}

		//现在这个位置 user对象已经封装好了
		//手动封装uid----uuid---随机不重复的字符串32位--java代码生成后是36位
		user.setId(UUID.randomUUID().toString());

		//3、将参数传递给一个业务操作方法
		try {
			regist(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//4、认为注册成功跳转到登录页面
		response.sendRedirect(request.getContextPath()+"/html/login.jsp");
		

	}

	//注册的方法
	public void regist(User user) throws SQLException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		
		
		runner.update(sql,user.getId(),user.getUname(),user.getUpassword(),user.getUsex(),
				user.getUmail(),user.getUtnumber(),0,"未申请");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}




}
