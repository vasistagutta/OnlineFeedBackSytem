package com.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.admin.model.Administrator;
import com.admin.model.Count;


public class AdministratorDAO {
 

	public int validateAdministrator(Administrator administrator,Count count) throws SQLException {
		
		System.out.println("inside administrator DAO class");
		Connection conn=ConnectionDB.getConnection();
		PreparedStatement ps1=null;
		ResultSet rs=null;
		
		ps1=conn.prepareStatement("select title from loginuser.subject_details where subject_code=?");
		  ps1.setString(1, administrator.getCodeNo());
		  rs= ps1.executeQuery();
		  if(rs.next()){
			administrator.setTitle(rs.getString(1));	
		  }
		  else{
			System.out.println("please give correct code no");
			return 2;
		  }
		  
		  PreparedStatement ps2=null;
		   ps2=conn.prepareStatement("select ename,department from loginuser.employee_table where eno=?");
		   ps2.setString(1, administrator.getTeacherID());
		  rs= ps2.executeQuery();
		  if(rs.next()){
			administrator.setTeacherName(rs.getString(1));
			administrator.setDepartment(rs.getString(2));
		  }
		  else{
			System.out.println("please give correct teacherID");
		 	return 3;
		  }
		  
		  PreparedStatement ps3=null;
		  ps3=conn.prepareStatement("select * from loginuser.employee_feedback where eno=? and subject_code=? and academic_year=? and section=? and semester=? and branch=?");
		   ps3.setString(1, administrator.getTeacherID());
		   ps3.setString(2, administrator.getCodeNo());
		   ps3.setString(3, administrator.getAcademicYear());
		   ps3.setString(4, administrator.getSection());
		   ps3.setString(5, administrator.getSemester());
		   ps3.setString(6, administrator.getBranch());

		   rs= ps3.executeQuery();
		 
		   if(rs.next())
		   {
			   String s;
			   do
			   {
					   s=rs.getString(10);

					   if(s.equalsIgnoreCase("excellent")){
						  count.setCount10Ex(count.getCount10Ex()+1);
					   }  
					   else if(s.equalsIgnoreCase("good")){
                          count.setCount10Gd(count.getCount10Gd()+1);
					   }
					   else if(s.equalsIgnoreCase("average")){
						  count.setCount10Avg(count.getCount10Avg()+1);
					   }
					   else if(s.equalsIgnoreCase("poor")){
                          count.setCount10Pr(count.getCount10Pr()+1);   
					   }
					   
					   s=rs.getString(11);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount11Ex(count.getCount11Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount11Gd(count.getCount11Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount11Avg(count.getCount11Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount11Pr(count.getCount11Pr()+1);   
						   }
				    
                       s=rs.getString(12);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount12Ex(count.getCount12Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount12Gd(count.getCount12Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount12Avg(count.getCount12Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount12Pr(count.getCount12Pr()+1);   
						   }
					   
                       s=rs.getString(13);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount13Ex(count.getCount13Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount13Gd(count.getCount13Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount13Avg(count.getCount13Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount13Pr(count.getCount13Pr()+1);   
						   }
					   
                       s=rs.getString(14);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount14Ex(count.getCount14Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount14Gd(count.getCount14Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount14Avg(count.getCount14Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount14Pr(count.getCount14Pr()+1);   
						   }
					   
                      s=rs.getString(15);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount15Ex(count.getCount15Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount15Gd(count.getCount15Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount15Avg(count.getCount15Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount15Pr(count.getCount15Pr()+1);   
						   }
					   
                       s=rs.getString(16);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount16Ex(count.getCount16Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount16Gd(count.getCount16Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount16Avg(count.getCount16Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount16Pr(count.getCount16Pr()+1);   
						   }
					   
                       s=rs.getString(17);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount17Ex(count.getCount17Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount17Gd(count.getCount17Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount17Avg(count.getCount17Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount17Pr(count.getCount17Pr()+1);   
						   }
					   
                       s=rs.getString(18);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount18Ex(count.getCount18Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount18Gd(count.getCount18Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount18Avg(count.getCount18Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount18Pr(count.getCount18Pr()+1);   
						   }
					   
                       s=rs.getString(19);
					   
					   if(s.equalsIgnoreCase("excellent")){
							  count.setCount19Ex(count.getCount19Ex()+1);
						   }  
						   else if(s.equalsIgnoreCase("good")){
	                          count.setCount19Gd(count.getCount19Gd()+1);
						   }
						   else if(s.equalsIgnoreCase("average")){
							  count.setCount19Avg(count.getCount19Avg()+1);
						   }
						   else if(s.equalsIgnoreCase("poor")){
	                          count.setCount19Pr(count.getCount19Pr()+1);   
						   }
					   s=rs.getString(20);

					   if(s.equalsIgnoreCase("excellent")){
						  count.setCount20Ex(count.getCount20Ex()+1);
					   }  
					   else if(s.equalsIgnoreCase("good")){
                          count.setCount20Gd(count.getCount20Gd()+1);
					   }
					   else if(s.equalsIgnoreCase("average")){
						  count.setCount20Avg(count.getCount20Avg()+1);
					   }
					   else if(s.equalsIgnoreCase("poor")){
                          count.setCount20Pr(count.getCount20Pr()+1);   
					   }
					   
		       }while(rs.next());	   
		   }
		   else{
			   System.out.println("please give correct Details");
			 	return 0;
		   }
		return 1;	
	}

}
