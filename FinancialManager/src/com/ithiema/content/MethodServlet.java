package com.ithiema.content;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import com.ithiema.utils.TxQueryRunner;


@SuppressWarnings("serial")
public class MethodServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		Map<String, String[]> properties = request.getParameterMap();
		Method method=new Method();
		
		try {
			BeanUtils.populate(method, properties);
			insert(id,method);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("methodInfo", "添加成功");
		request.getRequestDispatcher("/html/content/tactics.jsp").forward(request, response);
	}
	
	public void insert(String id,Method method) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into tactics values(?,?,?,?,?,?)";
		
		runner.update(sql,id,method.getsixaa(),method.getsixab(),method.getsixac(),
				method.getsixaf(),method.getsixai());
	} 
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
