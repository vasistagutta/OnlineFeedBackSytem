package com.pavan.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.pavan.dao.FeedbackFormDAO;
import com.pavan.dao.StudentDAO;
import com.pavan.model.Dummy;
import com.pavan.model.FeedbackForm;

public class StudentService {
	public ArrayList<FeedbackForm> validateStudent(FeedbackForm feedbackForm)throws SQLException
	{
		StudentDAO studentDAO = new StudentDAO();
		return (ArrayList<FeedbackForm>) studentDAO.validateStudentForm(feedbackForm);
	}


}
