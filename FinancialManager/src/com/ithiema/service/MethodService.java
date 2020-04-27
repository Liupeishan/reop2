package com.ithiema.service;

import java.sql.SQLException;
import java.util.List;

import com.ithiema.content.Method;
import com.ithiema.content.Tactics;
import com.ithiema.dao.MethodDao;

public class MethodService {

	public List<Tactics> findAllMethod(String id) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		MethodDao dao = new MethodDao();
		return dao.findAllMethod(id);
	}
	public List<Tactics> findMethodByType(String type) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		MethodDao dao = new MethodDao();
		return dao.findMethodByType(type);
	}
	public List<Tactics> findMethodByTname(String tname) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		MethodDao dao = new MethodDao();
		return dao.findMethodByTname(tname);
	}
	public void updateMethod(String tname,Method method) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		MethodDao dao = new MethodDao();
		dao.updateMethod(tname,method);
	}
	public void deleteMethod(String tname) throws SQLException {
		//因为没有复杂业务 直接传递请求到dao层
		MethodDao dao = new MethodDao();
		dao.deleteMethod(tname);
	}
}
