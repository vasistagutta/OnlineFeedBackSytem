package com.pavan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pavan.model.FeedbackForm;

public class FeedbackFormDAO {

	public int validateFeedbackForm(FeedbackForm feedbackForm) throws SQLException {
		System.out.println("Inside feedbackDAO Class");
		Connection conn=DBConn.getConnection();
		System.out.println("username" + feedbackForm.getUserID());
		PreparedStatement ps1=null;
		ResultSet rs=null;
		ps1=conn.prepareStatement("select *   from loginuser.employee_feedback where sno=? and subject_code=? and academic_year=?");
		ps1.setString(1, feedbackForm.getUserID());
		ps1.setString(2, feedbackForm.getCodeNo());
		ps1.setString(3, feedbackForm.getAcademicYear());
		rs= ps1.executeQuery();
		if(rs.next()){
			System.out.println("user already entered form in database");
			return 0;
		}else{
			  PreparedStatement ps4=null;
			  ps4=conn.prepareStatement("select * from loginuser.employee_details where eno=? and branch=? and semester=? and section=? and academic_year=? and subject_code=?");
			  ps4.setString(1, feedbackForm.getTeacherID());
			  ps4.setString(2, feedbackForm.getBranch());
			  ps4.setString(3, feedbackForm.getSemester());
			  ps4.setString(4, feedbackForm.getSection());
			  ps4.setString(5, feedbackForm.getAcademicYear());
			  ps4.setString(6, feedbackForm.getCodeNo());
			  rs= ps4.executeQuery();
			  if(rs.next()){
				  PreparedStatement ps5=null;
				  ps5=conn.prepareStatement("insert into loginuser.employee_feedback values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				  ps5.setString(1, feedbackForm.getUserID());
				  ps5.setString(2, feedbackForm.getTeacherID());
				  ps5.setString(3, feedbackForm.getTeacherName());
				  ps5.setString(4, feedbackForm.getCodeNo());
				  ps5.setString(5, feedbackForm.getTitle());
				  ps5.setString(6, feedbackForm.getAcademicYear());
				  ps5.setString(7, feedbackForm.getBranch());
				  ps5.setString(8, feedbackForm.getSemester());
				  ps5.setString(9, feedbackForm.getSection());
				  ps5.setString(10, feedbackForm.getNumber10());
				  ps5.setString(11, feedbackForm.getNumber11());
				  ps5.setString(12, feedbackForm.getNumber12());
				  ps5.setString(13, feedbackForm.getNumber13());
				  ps5.setString(14, feedbackForm.getNumber14());
				  ps5.setString(15, feedbackForm.getNumber15());
				  ps5.setString(16, feedbackForm.getNumber16());
				  ps5.setString(17, feedbackForm.getNumber17());
				  ps5.setString(18, feedbackForm.getNumber18());
				  ps5.setString(19, feedbackForm.getNumber19());
				  ps5.setString(20, feedbackForm.getNumber20());
				  ps5.setString(21, feedbackForm.getComment1());
				  ps5.setString(22, feedbackForm.getComment2());
				  ps5.setString(23, feedbackForm.getComment3());
				  ps5.execute();
				  System.out.println("VAlues inserted in table ..");
			 }
			  else{
				  System.out.println("enter correct teachersid , branch, section , semester , academic_year , subject_code");
				  return 4;
			  }
			  
		}
		return 1;
	}

	
	
}
