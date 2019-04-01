package com.pavan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.pavan.model.Login;


public class LoginDAO {

	public int validateLogin(Login login) throws SQLException
	{
		System.out.println("Inside DAO Class");
		Connection conn=DBConn.getConnection();
		PreparedStatement ps1=null;
		PreparedStatement ps2=null;
		int flag = 0;
		ResultSet rs=null;
		String reg=login.getStudentNo();
		String pass=login.getPassword();
		
		ps1=conn.prepareStatement("select sno   from loginuser.student_table");
		rs= ps1.executeQuery();
		List<String> userName = new ArrayList<String>();
		while(rs.next())
		{
			userName.add(rs.getString(1));
		}
		if(userName.contains(reg)){
		ps2 = conn.prepareStatement("select password  from loginuser.student_table where sno=?");
		ps2.setString(1, reg);
		rs= ps2.executeQuery();
		while(rs.next()){
			String temp= rs.getString(1);
			if(temp.equalsIgnoreCase(pass)){
				flag=1;
			}else{
				flag =0;
				System.out.println("Incorrect password");
			}
		}
		}else{
			System.out.println("username not found");
			flag =0;
		}
		return flag;
		
	}
}
