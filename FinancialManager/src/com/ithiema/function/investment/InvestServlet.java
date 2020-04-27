package com.ithiema.function.investment;

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
public class InvestServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		
		String id=request.getParameter("id");
		Map<String, String[]> properties = request.getParameterMap();
		Investment investment=new Investment();
		
		try {
			BeanUtils.populate(investment, properties);
			insert(id,investment);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("investoc1", investment.invest1());
		request.setAttribute("investoc2", investment.invest2());
		request.setAttribute("investInfo", investment.equal());
		request.getRequestDispatcher("/html/content/investment.jsp").forward(request, response);
	}
	
	public void insert(String id,Investment investment) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into investment values(?,?,?)";
		
		runner.update(sql,id,investment.toString1(),investment.invest1());
		runner.update(sql,id,investment.toString2(),investment.invest2());
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
