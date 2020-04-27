package com.ithiema.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;
import com.ithiema.register.User;
import com.ithiema.utils.TxQueryRunner;

public class UserService {
	
	public List<User> findUser(String id) throws SQLException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "select * from member where id=?";
		return runner.query(sql,new BeanListHandler<User>(User.class),id);
	}
	
	public void updateUser(User user,String id) throws SQLException{
		//操作数据库
		TxQueryRunner runner = new TxQueryRunner();
		String sql = "update member set uname=?,upassword=?,usex=?,umail=?,utnumber=? where id=?";
		runner.update(sql,user.getUname(),user.getUpassword(),user.getUsex(),
				user.getUmail(),user.getUtnumber(),id);
	}
}
