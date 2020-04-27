package com.ithiema.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ithiema.content.ItemsList;
import com.ithiema.utils.TxQueryRunner;

public class ItemsDao {

	//根据传参查找指定项目数据库
		public List<ItemsList> findItems(String id,String table) throws SQLException{
			TxQueryRunner runner = new TxQueryRunner();
			String sql = "select * from " + table + " where id=?";
			List<ItemsList> itemsList = runner.query(sql, new BeanListHandler<ItemsList>(ItemsList.class),id);
			return itemsList;
		}
		public List<ItemsList> findItemsByContent(String id,String content,String table) throws SQLException{
			TxQueryRunner runner = new TxQueryRunner();
			String sql = "select * from " + table + " where id=? and content=?";
			List<ItemsList> itemsList = runner.query(sql, new BeanListHandler<ItemsList>(ItemsList.class),id,content);
			return itemsList;
		}
		//删除指定项目
		public void deleteItems(String content,String table) throws SQLException {
			TxQueryRunner runner = new TxQueryRunner();
			String sql = "delete from "+ table +" where content=?";
			runner.update(sql,content);
		}
		
		
}
