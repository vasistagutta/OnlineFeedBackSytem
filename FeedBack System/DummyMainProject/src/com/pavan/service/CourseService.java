package com.pavan.service;

import java.sql.SQLException;

import com.pavan.dao.CourseDAO;
import com.pavan.model.FeedbackForm;

public class CourseService {
	
	public int validateCourse(FeedbackForm feedbackForm)throws SQLException
	{
		CourseDAO courseDAO=new CourseDAO();
		
		return courseDAO.validateCourse(feedbackForm);
	}


}
