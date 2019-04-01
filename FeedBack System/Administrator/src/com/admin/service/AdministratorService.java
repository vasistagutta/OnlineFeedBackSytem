package com.admin.service;

import java.sql.SQLException;

import com.admin.dao.AdministratorDAO;
import com.admin.model.Administrator;
import com.admin.model.Count;

public class AdministratorService {
	
public int validateAdministrator(Administrator administrator,Count count) throws SQLException {
		AdministratorDAO administratorDAO=new AdministratorDAO();
		return administratorDAO.validateAdministrator(administrator,count);
	}

}
