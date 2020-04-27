package com.ithiema.service;

import java.sql.SQLException;
import java.util.List;

import com.ithiema.content.ItemsList;
import com.ithiema.dao.ItemsDao;

public class ItemsService {
	
	public List<ItemsList> findItems(String id,String table) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		ItemsDao dao = new ItemsDao();
		return dao.findItems(id,table);
	}
	public List<ItemsList> findItemsByContent(String id,String content,String table) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		ItemsDao dao = new ItemsDao();
		return dao.findItemsByContent(id,content,table);
	}
	public void deleteItems(String content,String table) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		ItemsDao dao = new ItemsDao();
		dao.deleteItems(content,table);
	}
	
	public String equalByCash(String id,String table) throws SQLException {
			
			ItemsDao items=new ItemsDao();
			List<ItemsList> itemsList=items.findItems(id, table);
			
			double outcome=0;
			String cash=null;
			for(int i=0;i<itemsList.size();i++) {
				if(outcome<Double.parseDouble(itemsList.get(i).getCash())) {
					outcome=Double.parseDouble(itemsList.get(i).getCash());
					cash=itemsList.get(i).getContent();
				}
			}
			return cash;
		}
}
