package com.pavan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pavan.model.FeedbackForm;
import com.pavan.service.CourseService;

/**
 * Servlet implementation class CourseController
 */
@WebServlet("/CourseController")
public class CourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("inside feedback form controller" );
		HttpSession session = request.getSession(true);
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		System.out.println("user action received by controller="+ action);
		if("validateCourse".equalsIgnoreCase(action)){
			FeedbackForm feedbackForm = new FeedbackForm();
			feedbackForm.setUserID((String) session.getAttribute("userName"));
			feedbackForm.setCodeNo(request.getParameter("codeno").toUpperCase());
			//feedbackForm.setTeacherID(request.getParameter("teacherid").toUpperCase());
			feedbackForm.setAcademicYear((String) session.getAttribute("AcademicYear"));
			feedbackForm.setBranch((String) session.getAttribute("Branch"));
			feedbackForm.setSemester((String) session.getAttribute("Semester"));
			feedbackForm.setSection((String) session.getAttribute("Section"));
			System.out.println("code no is"+feedbackForm.getCodeNo());
			System.out.println("branch is"+feedbackForm.getBranch());
			System.out.println("section is"+feedbackForm.getSection());
			System.out.println("semester is"+feedbackForm.getSemester());
			System.out.println("academic year is"+feedbackForm.getAcademicYear());
			CourseService courseService=new CourseService();
			try {
				int i = courseService.validateCourse(feedbackForm);
				System.out.println("final value " + i);
				if(i==1){
					session.setAttribute("CodeNo", feedbackForm.getCodeNo());
					session.setAttribute("Title",feedbackForm.getTitle());
					session.setAttribute("TeacherID",feedbackForm.getTeacherID());
					session.setAttribute("TeacherName",feedbackForm.getTeacherName());
					
					RequestDispatcher requestDispatcher=request.getRequestDispatcher("FeedbackForm.jsp");
					requestDispatcher.forward(request, response);
				}
				else{
					System.out.println("enter corect details");
					RequestDispatcher requestDispatcher=request.getRequestDispatcher("Course.jsp");
					requestDispatcher.forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
       }
		
	}

}
