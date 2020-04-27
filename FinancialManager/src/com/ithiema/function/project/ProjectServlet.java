package com.ithiema.function.project;

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
public class ProjectServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		Map<String, String[]> properties = request.getParameterMap();
		Project project=new Project();
		
		try {
			BeanUtils.populate(project, properties);
			insert(id,project);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("projectInfo", project.project());
		request.getRequestDispatcher("/html/content/project.jsp").forward(request, response);
	}
	
	public void insert(String id,Project project) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into project values(?,?,?)";
		
		runner.update(sql,id,project.toString(),project.project());
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
