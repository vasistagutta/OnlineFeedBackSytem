package com.pavan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pavan.model.Login;
import com.pavan.service.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		System.out.println("loginController::doPost invoked");
		HttpSession session = request.getSession();
		String action=request.getParameter("action");
		System.out.println("user action received by controller="+ action);
		if("validateLogin".equalsIgnoreCase(action)){
			Login login = new Login();
			System.out.println(request.getParameter("username"));
			System.out.println(request.getParameter("password"));
			login.setStudentNo(request.getParameter("username").toLowerCase());
			login.setPassword(request.getParameter("password"));
			LoginService loginService = new LoginService();
			try {
				int value = loginService.validateLogin(login);
				if(value==1){
					System.out.println("connection successful "+ value);
					session.setAttribute("userName", login.getStudentNo());
					request.getRequestDispatcher("/Student.jsp").forward(request, response);  
				}
				else
				{
					System.out.println("connection failed "+ value);
					PrintWriter out=response.getWriter();
					request.getRequestDispatcher("/").forward(request, response); 
					out.write("<html><body>");
					out.write("<p>Invalid login<p></body></html>");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
