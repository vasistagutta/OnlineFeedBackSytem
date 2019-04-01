package com.pavan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pavan.model.Dummy;
import com.pavan.model.FeedbackForm;
import com.pavan.service.StudentService;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
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
		System.out.println("inside student controller" );
		HttpSession session = request.getSession(true);
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		System.out.println("user action received by controller="+ action);
		if("validateStudent".equalsIgnoreCase(action)){
			FeedbackForm feedbackForm = new FeedbackForm();
			feedbackForm.setUserID((String) session.getAttribute("userName"));
			//feedbackForm.setCodeNo(request.getParameter("codeno").toUpperCase());
			//feedbackForm.setTeacherID(request.getParameter("teacherid").toUpperCase());
			feedbackForm.setAcademicYear(request.getParameter("academicyear"));
			feedbackForm.setBranch(request.getParameter("branch"));
			feedbackForm.setSemester(request.getParameter("semester"));
			feedbackForm.setSection(request.getParameter("section"));
			/*feedbackForm.setNumber10(request.getParameter("number10"));
			feedbackForm.setNumber11(request.getParameter("number11"));
			feedbackForm.setNumber12(request.getParameter("number12"));
			feedbackForm.setNumber13(request.getParameter("number13"));
			feedbackForm.setNumber14(request.getParameter("number14"));
			feedbackForm.setNumber15(request.getParameter("number15"));
			feedbackForm.setNumber16(request.getParameter("number16"));
			feedbackForm.setNumber17(request.getParameter("number17"));
			feedbackForm.setNumber18(request.getParameter("number18"));
			feedbackForm.setNumber19(request.getParameter("number19"));
			feedbackForm.setNumber20(request.getParameter("number20"));
			feedbackForm.setComment1(request.getParameter("strongpoint"));
			feedbackForm.setComment2(request.getParameter("weakpoint"));
			feedbackForm.setComment3(request.getParameter("suggestion"));
			*/StudentService studentService = new StudentService();
			ArrayList<FeedbackForm> feedBackList =new ArrayList<FeedbackForm>();
			try {
				//int i = studentService.validate
				feedBackList = studentService.validateStudent(feedbackForm);
				//System.out.println("final value " + feedBackList.get(0).getCodeNo());
				if(feedBackList!=null){
				request.setAttribute("feedBackList", feedBackList);
				session.setAttribute("Branch", feedbackForm.getBranch());
				session.setAttribute("Section", feedbackForm.getSection());
				session.setAttribute("Semester", feedbackForm.getSemester());
				session.setAttribute("AcademicYear", feedbackForm.getAcademicYear());
				RequestDispatcher requestDispatcher=request.getRequestDispatcher("Course.jsp");
				requestDispatcher.forward(request, response);
				}
				
				else{
					System.out.println("enter corect details");
					RequestDispatcher requestDispatcher=request.getRequestDispatcher("Student.jsp");
					requestDispatcher.forward(request, response);
				   }
				///
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
				/*String docType="<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">";
				out.write(docType);
				out.write("<html>");
				out.write("<head>");
				out.write("</head>");
				out.write("<body>");
				
				out.write("<p align=\"right\">");
				out.write("<button onclick=\"goBack()\">Go Back</button>");
				out.write("<script> function goBack() { window.history.back(); } </script>");
				out.write("      ");
				out.write("<button onclick=\"myFunction()\">New FeedbackForm</button>");
				out.write("<script> function myFunction() { window.location.href=\"http://localhost:8080/MainProject/FeedbackForm.jsp\"} </script>");
				out.write("   ");
				out.write("<button onclick=\"myFunction1()\">Logout</button>");
				out.write("<script> function myFunction1() { window.location.href=\"http://localhost:8080/MainProject/\"} </script>");
				out.write("</p>");
				
				out.write("<center>");
				
				if(i==0){
					out.write("<h2>you have already entered the feedback form for this subject<h2>");
				}
				else if(i==1){
					out.write("<h2>Feedback Form is sucessfully completed<h2>");
					out.write("<h1>&#10004;</h1>");
				}
				else if(i==2){
					out.write("<h2>please re-enter correct teacherID<h2>");
					out.write("<h1>&#10060;</h1>");
				}
				else if(i==3){
					out.write("<h2>please re-enter correct code no<h2>");
					out.write("<h1>&#10060;</h1>");
				}
				else if(i==4){
					out.write("<h2>re-enter correct teacher'sid , branch, section , semester , academic_year , subject_code<h2>");
					out.write("<h1>&#10060;</h1>");
				}
				out.write("</center>");
				out.write("</body>");
				out.write("</html>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
*/			
			
		
		
	
	}

}
}
