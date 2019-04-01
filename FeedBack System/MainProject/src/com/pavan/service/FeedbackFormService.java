package com.pavan.service;

import java.sql.SQLException;

import com.pavan.dao.FeedbackFormDAO;
import com.pavan.dao.LoginDAO;
import com.pavan.model.FeedbackForm;

public class FeedbackFormService {
	
	public int validateFeedbackForm(FeedbackForm feedbackForm)throws SQLException
	{
		FeedbackFormDAO feedbackFormDAO = new FeedbackFormDAO();
		return feedbackFormDAO.validateFeedbackForm(feedbackForm);
	}

}
