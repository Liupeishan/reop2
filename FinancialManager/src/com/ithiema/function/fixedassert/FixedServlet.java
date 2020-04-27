package com.ithiema.function.fixedassert;

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
public class FixedServlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		//从页面获取数据封装到对象数组中
		String id=request.getParameter("id");
		Map<String, String[]> properties = request.getParameterMap();
		FixedAssert fixedassert= new FixedAssert();
		try {
			BeanUtils.populate(fixedassert, properties);
			insert(id,fixedassert);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		try {
			request.setAttribute("assertoc1", fixedassert.fixedassert1());
			request.setAttribute("assertoc2", fixedassert.fixedassert1());
			request.setAttribute("assertInfo", fixedassert.equal());
			request.getRequestDispatcher("/html/content/fixedassert.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public void insert(String id,FixedAssert fixedassert) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into fixedasset values(?,?,?)";
		
		runner.update(sql,id,fixedassert.toString1(),fixedassert.fixedassert1());
		runner.update(sql,id,fixedassert.toString2(),fixedassert.fixedassert2());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
