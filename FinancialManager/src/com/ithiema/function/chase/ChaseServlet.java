package com.ithiema.function.chase;

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
public class ChaseServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		Map<String, String[]> properties = request.getParameterMap();
		Chase chase=new Chase();
		
		try {
			BeanUtils.populate(chase, properties);
			this.insert(id,chase);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("chaseoc1", chase.chase1());
		request.setAttribute("chaseoc2", chase.chase2());
		request.setAttribute("chaseInfo", chase.equal());
		request.getRequestDispatcher("/html/content/chase.jsp").forward(request, response);
	}
	
	public void insert(String id,Chase chase) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into project values(?,?,?)";
		
		runner.update(sql,id,chase.toString1(),chase.chase1());
		//String sql = "insert into chase values(?,?,?)";
		
		//runner.update(sql,id,chase.toString1(),chase.chase1());
		//runner.update(sql,id,chase.toString2(),chase.chase2());
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
