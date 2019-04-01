package com.admin.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
	
	public static Connection getConnection() throws	SQLException
	{
		Connection conn=null;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting...................................");
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/loginuser", "root", "pavan");
			System.out.println("connected");
		   }
		catch(SQLException e) {
			System.out.println("Not connected");
			e.printStackTrace();
		 } 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch blockSystem.out.println("NOt connected");
			System.out.println("NOt connected");
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConnection(Connection conn)
	{
		if(conn!=null)
		{
			try{
				conn.close();
			}catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}


}
