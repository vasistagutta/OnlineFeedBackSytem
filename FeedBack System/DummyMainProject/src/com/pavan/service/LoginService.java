package com.pavan.service;

import java.sql.SQLException;

import com.pavan.dao.LoginDAO;
import com.pavan.model.Login;


public class LoginService {

	public int validateLogin(Login login)throws SQLException
	{
		LoginDAO donorDAO=new LoginDAO();
		return donorDAO.validateLogin(login);
	}
	
}
