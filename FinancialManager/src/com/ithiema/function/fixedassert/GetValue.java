package com.ithiema.function.fixedassert;

import java.sql.SQLException;

import org.apache.commons.dbutils.handlers.BeanHandler;

import com.ithiema.utils.TxQueryRunner;

public class GetValue {
	
	public Value getValue(int i,int n) throws SQLException, ClassNotFoundException {
		TxQueryRunner runner=new TxQueryRunner();
		String sql="select * from value where i=? and n=?";
		Value value = runner.query(sql, new BeanHandler<Value>(Value.class),i,n);
		return value;
	}
	
	
}
