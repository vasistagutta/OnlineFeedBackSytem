package com.pavan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pavan.model.FeedbackForm;

public class CourseDAO {

	public int validateCourse(FeedbackForm feedbackForm)throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("Inside feedbackDAO Class");
		Connection conn=DBConn.getConnection();
		System.out.println("username" + feedbackForm.getUserID());
		ResultSet rs=null;
		
		PreparedStatement ps6=null;
		  ps6=conn.prepareStatement("select eno from loginuser.employee_details where branch=? and semester=? and section=? and academic_year=? and subject_code=?");
		  ps6.setString(1, feedbackForm.getBranch());
		  ps6.setString(2, feedbackForm.getSemester());
		  ps6.setString(3, feedbackForm.getSection());
		  ps6.setString(4, feedbackForm.getAcademicYear());
		  ps6.setString(5, feedbackForm.getCodeNo());
		  rs= ps6.executeQuery();
		  if(rs.next()){
				 feedbackForm.setTeacherID(rs.getString(1));
			}
		  else{
			  System.out.println("please give correct details");
			 	return 2;
		  }
		
		   PreparedStatement ps2=null;
		   ps2=conn.prepareStatement("select ename from loginuser.employee_table where eno=?");
		   ps2.setString(1, feedbackForm.getTeacherID());
		  rs= ps2.executeQuery();
		  if(rs.next()){
			feedbackForm.setTeacherName(rs.getString(1));
		  }
		  else{
			System.out.println("please give correct teacherID");
		 	return 2;
		  }
		  PreparedStatement ps3=null;
		  ps3=conn.prepareStatement("select title from loginuser.subject_details where subject_code=?");
		  ps3.setString(1, feedbackForm.getCodeNo());
		  rs= ps3.executeQuery();
		  if(rs.next()){
			feedbackForm.setTitle(rs.getString(1));	
		  }
		  else{
			System.out.println("please give correct code no");
			return 3;
		  }
		  
		
		return 1;
	}

	
}
