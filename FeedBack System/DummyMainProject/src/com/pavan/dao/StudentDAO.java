package com.pavan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.pavan.model.Dummy;
import com.pavan.model.FeedbackForm;

public class StudentDAO {

	public ArrayList<FeedbackForm> validateStudentForm(FeedbackForm feedbackForm) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("Inside StudentDAO Class");
		Connection conn=DBConn.getConnection();
		ArrayList<FeedbackForm> feedBackList = new ArrayList<FeedbackForm>();
		
		System.out.println("username" + feedbackForm.getUserID());
		 PreparedStatement ps4=null;
		 PreparedStatement ps1=null;
			ResultSet rs=null;
		  ps4=conn.prepareStatement("select eno,subject_code,ename from loginuser.employee_details where  branch=? and semester=? and section=? and academic_year=?");
		  //ps4.setString(1, feedbackForm.getTeacherID());
		  ps4.setString(1, feedbackForm.getBranch());
		  ps4.setString(2, feedbackForm.getSemester());
		  ps4.setString(3, feedbackForm.getSection());
		  ps4.setString(4, feedbackForm.getAcademicYear());
		  //ps4.setString(6, feedbackForm.getCodeNo());
		  rs= ps4.executeQuery();
		 if(rs.next()){
			  do{		
				 FeedbackForm feedbackForm1 = new FeedbackForm();
				 feedbackForm1.setTeacherID(rs.getString(1));
				 feedbackForm1.setCodeNo(rs.getString(2));
				 feedbackForm1.setTeacherName(rs.getString(3));
				 feedBackList.add(feedbackForm1);
				  }while(rs.next());
		 }
		  else{
			  System.out.println("enter correct teachersid , branch, section , semester , academic_year , subject_code");
			  return null;
		      }
		return feedBackList;
		
	}

} 
