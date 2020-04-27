package com.ithiema.dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ithiema.content.Method;
import com.ithiema.content.Tactics;
import com.ithiema.utils.TxQueryRunner;

public class MethodDao {

	//根据id查找方法数据库
	public List<Tactics> findAllMethod(String id) throws SQLException{
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "select * from tactics where id=?";
		List<Tactics> methodList = runner.query(sql, new BeanListHandler<Tactics>(Tactics.class),id);
		return methodList;
	}
	//根据type查找方法
	public List<Tactics> findMethodByType(String type) throws SQLException{
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "select * from tactics where type=?";
		List<Tactics> methodList = runner.query(sql, new BeanListHandler<Tactics>(Tactics.class),type);
		return methodList;
	}
	public List<Tactics> findMethodByTname(String tname) throws SQLException{
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "select * from tactics where tname=?";
		List<Tactics> methodList = runner.query(sql, new BeanListHandler<Tactics>(Tactics.class),tname);
		return methodList;
	}
	//删除指定方法
	public void deleteMethod(String tname) throws SQLException {
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "delete from tactics where tname=?";
		runner.update(sql,tname);
	}
	
	//更新指定方法
	public void updateMethod(String tname,Method method) throws SQLException {
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "update tactics set tname=?,type=?,tcontent=?,tadv=?,tdef=?,ex=? where tname=?";
		runner.update(sql,method.getsixaa(),method.getsixab(),method.getsixac(),method.getsixaf(),
				method.getsixag(),method.getsixai(),tname);
	}
	
}
