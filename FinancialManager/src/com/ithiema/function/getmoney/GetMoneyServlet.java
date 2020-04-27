package com.ithiema.function.getmoney;

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
public class GetMoneyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		System.out.println(id);
		Map<String, String[]> properties = request.getParameterMap();
		GetMoney money= new GetMoney();
		
		try {
			BeanUtils.populate(money, properties);
			insert(id,money);
		} catch (IllegalAccessException | InvocationTargetException | ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("moneyoc1", money.getMoney1());
		request.setAttribute("moneyoc2", money.getMoney1());
		request.setAttribute("moneyInfo", money.equal());
		request.getRequestDispatcher("/html/content/debt.jsp").forward(request, response);
	}
	
	public void insert(String id,GetMoney money) throws SQLException, ClassNotFoundException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "insert into debt values(?,?,?)";
		
		runner.update(sql,id,money.toString1(),money.getMoney1());
		runner.update(sql,id,money.toString2(),money.getMoney1());
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
