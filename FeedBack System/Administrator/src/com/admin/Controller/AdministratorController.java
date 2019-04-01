package com.admin.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.model.Administrator;
import com.admin.model.Count;
import com.admin.service.AdministratorService;



/**
 * Servlet implementation class AdministratorController
 */
@WebServlet("/AdministratorController")
public class AdministratorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdministratorController() {
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
		
		PrintWriter out=response.getWriter();
		
		System.out.println("inside Administrator form controller" );
		String action=request.getParameter("action");
		System.out.println("user action received by controller="+ action);
		
		if("validateAdministrator".equalsIgnoreCase(action)){
			
			System.out.println("good");
			Administrator administrator=new Administrator();
			Count count=new Count();
			administrator.setTeacherID(request.getParameter("teacherid").toUpperCase());
			administrator.setCodeNo(request.getParameter("subjetcode").toUpperCase());
			administrator.setAcademicYear(request.getParameter("academicyear"));
			administrator.setBranch(request.getParameter("branch"));
			administrator.setSemester(request.getParameter("semester"));
			administrator.setSection(request.getParameter("section"));
			AdministratorService administratorService=new AdministratorService();
			try {
				int i=administratorService.validateAdministrator(administrator,count);
				
				System.out.println("final value " + i);
				
				String docType="<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">";
				out.write(docType);
				out.write("<html>");
				out.write("<head>");
				out.write("</head>");
				out.write("<body>");
				out.write("<p align=\"right\">");
				out.write("<button onclick=\"goBack()\">Go Back</button>");
				out.write("<script> function goBack() { window.history.back(); } </script>");
				out.write("      ");
				out.write("<button onclick=\"myFunction()\">Print this page</button>");
				out.write("<script> function myFunction() { window.print();} </script>");
				out.write("</p>");
			
			if(i==1){
				//out.write("<h1>&#10004;</h1>");
				out.write("<center><h2><b>Teacher's Feedback</b></h2></center>");
				out.write("<center><h2><b>"+administrator.getBranch()+"</h2></b></center>");
				out.write("<table cellspacing=\"10\" style=\"font-size: 17px\">");
				 out.write("<tbody><tr><td>");
				out.write("Teacher id :</td><td>"+administrator.getTeacherID()+"</td>");
				out.write("<td>&emsp;&emsp;&emsp;&emsp;Teacher Name: </td><td>"+administrator.getTeacherName()+"</td></tr>");
				out.write("<tr><td>Subject Code : </td><td>"+administrator.getCodeNo()+"</td>");
				out.write("<td>&emsp;&emsp;&emsp;&emsp;Title: </td><td>"+administrator.getTitle()+"</td>");
				out.write("<tr><td>Department : </td><td>"+administrator.getBranch()+"</td>");
				out.write("<td>&emsp;&emsp;&emsp;&emsp;Semester : </td><td>"+administrator.getSemester()+"</td></tr>");
				out.write("<tr><td> Section : </td><td>"+administrator.getSection()+"</td>");
				out.write("<td>&emsp;&emsp;&emsp;&emsp;Academic Year: </td><td>"+administrator.getAcademicYear()+"</td</tr>");
				out.write("</tbody></table>");
				
				float count10=count.getCount10Ex()+count.getCount10Gd()+count.getCount10Avg()+count.getCount10Pr();
				float count11=count.getCount11Ex()+count.getCount11Gd()+count.getCount11Avg()+count.getCount11Pr();
				float count12=count.getCount12Ex()+count.getCount12Gd()+count.getCount12Avg()+count.getCount12Pr();
				float count13=count.getCount13Ex()+count.getCount13Gd()+count.getCount13Avg()+count.getCount13Pr();
				float count14=count.getCount14Ex()+count.getCount14Gd()+count.getCount14Avg()+count.getCount14Pr();
				float count15=count.getCount15Ex()+count.getCount15Gd()+count.getCount15Avg()+count.getCount15Pr();
				float count16=count.getCount16Ex()+count.getCount16Gd()+count.getCount16Avg()+count.getCount16Pr();
				float count17=count.getCount17Ex()+count.getCount17Gd()+count.getCount17Avg()+count.getCount17Pr();
				float count18=count.getCount18Ex()+count.getCount18Gd()+count.getCount18Avg()+count.getCount18Pr();
				float count19=count.getCount19Ex()+count.getCount19Gd()+count.getCount19Avg()+count.getCount19Pr();
				float count20=count.getCount20Ex()+count.getCount20Gd()+count.getCount20Avg()+count.getCount20Pr();
				
				int countA=count.getCount10Ex()+count.getCount11Ex()+count.getCount12Ex()+count.getCount13Ex()+count.getCount14Ex()+count.getCount15Ex()+count.getCount16Ex()+count.getCount17Ex()+count.getCount18Ex()+count.getCount19Ex()+count.getCount20Ex();
				int countB=count.getCount10Gd()+count.getCount11Gd()+count.getCount12Gd()+count.getCount13Gd()+count.getCount14Gd()+count.getCount15Gd()+count.getCount16Gd()+count.getCount17Gd()+count.getCount18Gd()+count.getCount19Gd()+count.getCount20Gd();
				int countC=count.getCount10Avg()+count.getCount11Avg()+count.getCount12Avg()+count.getCount13Avg()+count.getCount14Avg()+count.getCount15Avg()+count.getCount16Avg()+count.getCount17Avg()+count.getCount18Avg()+count.getCount19Avg()+count.getCount20Avg();
				int countD=count.getCount10Pr()+count.getCount11Pr()+count.getCount12Pr()+count.getCount13Pr()+count.getCount14Pr()+count.getCount15Pr()+count.getCount16Pr()+count.getCount17Pr()+count.getCount18Pr()+count.getCount19Pr()+count.getCount20Pr();
				
				
				
				float count10AB=(float)  Math.round((((count.getCount10Ex()+count.getCount10Gd())/count10)*100));				
				float count11AB=(float) Math.round((((count.getCount11Ex()+count.getCount11Gd())/count11)*100));
				float count12AB=(float) Math.round((((count.getCount12Ex()+count.getCount12Gd())/count12)*100));
				float count13AB=(float) Math.round((((count.getCount13Ex()+count.getCount13Gd())/count13)*100));
				float count14AB=(float) Math.round((((count.getCount14Ex()+count.getCount14Gd())/count14)*100));
				float count15AB=(float) Math.round((((count.getCount15Ex()+count.getCount15Gd())/count15)*100));
				float count16AB=(float) Math.round((((count.getCount16Ex()+count.getCount16Gd())/count16)*100));
				float count17AB=(float) Math.round((((count.getCount17Ex()+count.getCount17Gd())/count17)*100));
				float count18AB=(float) Math.round((((count.getCount18Ex()+count.getCount18Gd())/count18)*100));
				float count19AB=(float) Math.round((((count.getCount19Ex()+count.getCount19Gd())/count19)*100));
				float count20AB=(float) Math.round((((count.getCount20Ex()+count.getCount20Gd())/count20)*100));
				
				
				float count10C=(float) Math.round((((count.getCount10Avg())/count10)*100));				
				float count11C=(float) Math.round((((count.getCount11Avg())/count11)*100));
				float count12C=(float) Math.round((((count.getCount12Avg())/count12)*100));
				float count13C=(float) Math.round((((count.getCount13Avg())/count13)*100));
				float count14C=(float) Math.round((((count.getCount14Avg())/count14)*100));
				float count15C=(float) Math.round((((count.getCount15Avg())/count15)*100));
				float count16C=(float) Math.round((((count.getCount16Avg())/count16)*100));
				float count17C=(float) Math.round((((count.getCount17Avg())/count17)*100));
				float count18C=(float) Math.round((((count.getCount18Avg())/count18)*100));
				float count19C=(float) Math.round((((count.getCount19Avg())/count19)*100));
				float count20C=(float) Math.round((((count.getCount20Avg())/count20)*100));
				
				float count10D=(float) Math.round((((count.getCount10Pr())/count10)*100));				
				float count11D=(float) Math.round((((count.getCount11Pr())/count11)*100));
				float count12D=(float) Math.round((((count.getCount12Pr())/count12)*100));
				float count13D=(float) Math.round((((count.getCount13Pr())/count13)*100));
				float count14D=(float) Math.round((((count.getCount14Pr())/count14)*100));
				float count15D=(float) Math.round((((count.getCount15Pr())/count15)*100));
				float count16D=(float) Math.round((((count.getCount16Pr())/count16)*100));
				float count17D=(float) Math.round((((count.getCount17Pr())/count17)*100));
				float count18D=(float) Math.round((((count.getCount18Pr())/count18)*100));
				float count19D=(float) Math.round((((count.getCount19Pr())/count19)*100));
				float count20D=(float) Math.round((((count.getCount20Pr())/count20)*100));
				
				float sum=countA+countB+countC+countD;
				float sumAB=(float) Math.round((((countA+countB)/sum)*100));
				float sumC=(float) Math.round((((countC)/sum)*100));
				float sumD=(float) Math.round((((countD)/sum)*100));
				
				out.write("<center>");
				out.write("<table border=\"2\" cellspacing=\"0\" style=\"font-size: 17px\">");
				out.write("<thead><tr><th>Point</th><th>A</th><th>B</th><th>C</th><th>D</th><th>A+B+C+D</th><th>(A+B)%</th><th>C%</th><th>D%</th></thead>");
				out.write("<tbody>");
				 out.write("<tr><td>Furnishing adequate information regarding what is to be covered in subject</td>");
				  out.write("<td>"+count.getCount10Ex()+"</td><td>"+count.getCount10Gd()+"</td><td>"+count.getCount10Avg()+"</td><td>"+count.getCount10Pr()+"</td>");
				  out.write("<td>"+count10+"</td><td>"+count10AB+"</td><td>"+count10C+"</td><td>"+count10D+"</td></tr>");
				  
				  out.write("<tr><td>The teacher's preparation for the class and his presentation of the subject matter</td>");
				  out.write("<td>"+count.getCount11Ex()+"</td><td>"+count.getCount11Gd()+"</td><td>"+count.getCount11Avg()+"</td><td>"+count.getCount11Pr()+"</td>");
				  out.write("<td>"+count11+"</td><td>"+count11AB+"</td><td>"+count11C+"</td><td>"+count11D+"</td></tr>");
				  
				  out.write("<tr><td>The teacher's ability to represent graphs,Black Board work and working out illustration</td>");
				  out.write("<td>"+count.getCount12Ex()+"</td><td>"+count.getCount12Gd()+"</td><td>"+count.getCount12Avg()+"</td><td>"+count.getCount12Pr()+"</td>");
				  out.write("<td>"+count12+"</td><td>"+count12AB+"</td><td>"+count12C+"</td><td>"+count12D+"</td></tr>");
				  
				  out.write("<tr><td>Teacher's ability to maintain discipline in class</td>");
				  out.write("<td>"+count.getCount13Ex()+"</td><td>"+count.getCount13Gd()+"</td><td>"+count.getCount13Avg()+"</td><td>"+count.getCount13Pr()+"</td>");
				  out.write("<td>"+count13+"</td><td>"+count13AB+"</td><td>"+count13C+"</td><td>"+count13D+"</td></tr>");
				  
				  out.write("<tr><td>Coverage of Syllabus</td>");
				  out.write("<td>"+count.getCount14Ex()+"</td><td>"+count.getCount14Gd()+"</td><td>"+count.getCount14Avg()+"</td><td>"+count.getCount14Pr()+"</td>");
				  out.write("<td>"+count14+"</td><td>"+count14AB+"</td><td>"+count14C+"</td><td>"+count14D+"</td></tr>");
				  
				  out.write("<tr><td>Teacher's ability to stimulate interest in the subject through question, discussion and the expression of opinion by students</td>");
				  out.write("<td>"+count.getCount15Ex()+"</td><td>"+count.getCount15Gd()+"</td><td>"+count.getCount15Avg()+"</td><td>"+count.getCount15Pr()+"</td>");
				  out.write("<td>"+count15+"</td><td>"+count15AB+"</td><td>"+count15C+"</td><td>"+count15D+"</td></tr>");
				  
				  out.write("<tr><td>Teachers ability to relate theory to practical situations</td>");
				  out.write("<td>"+count.getCount16Ex()+"</td><td>"+count.getCount16Gd()+"</td><td>"+count.getCount16Avg()+"</td><td>"+count.getCount16Pr()+"</td>");
				  out.write("<td>"+count16+"</td><td>"+count16AB+"</td><td>"+count16C+"</td><td>"+count16D+"</td></tr>");
				  
				  out.write("<tr><td>Testing and evaluation methods used by the teacher</td>");
				  out.write("<td>"+count.getCount17Ex()+"</td><td>"+count.getCount17Gd()+"</td><td>"+count.getCount17Avg()+"</td><td>"+count.getCount17Pr()+"</td>");
				  out.write("<td>"+count17+"</td><td>"+count17AB+"</td><td>"+count17C+"</td><td>"+count17D+"</td></tr>");
				  
				  out.write("<tr><td>Fairness and impartiality to students</td>");
				  out.write("<td>"+count.getCount18Ex()+"</td><td>"+count.getCount18Gd()+"</td><td>"+count.getCount18Avg()+"</td><td>"+count.getCount18Pr()+"</td>");
				  out.write("<td>"+count18+"</td><td>"+count18AB+"</td><td>"+count18C+"</td><td>"+count18D+"</td></tr>");
				  
				  out.write("<tr><td>Opportunities for contact with the teacher outside the class</td>");
				  out.write("<td>"+count.getCount19Ex()+"</td><td>"+count.getCount19Gd()+"</td><td>"+count.getCount19Avg()+"</td><td>"+count.getCount19Pr()+"</td>");
				  out.write("<td>"+count19+"</td><td>"+count19AB+"</td><td>"+count19C+"</td><td>"+count19D+"</td></tr>");
				  
				  out.write("<tr><td>Teacher's attempt to teach students of different levels</td>");
				  out.write("<td>"+count.getCount20Ex()+"</td><td>"+count.getCount20Gd()+"</td><td>"+count.getCount20Avg()+"</td><td>"+count.getCount20Pr()+"</td>");
				  out.write("<td>"+count20+"</td><td>"+count20AB+"</td><td>"+count20C+"</td><td>"+count20D+"</td></tr>");
				  
				  out.write("</tbody>");
				   out.write("<tfoot>");
				     out.write("<tr>");
				     out.write("<th>Total</th><th>"+countA+"</th><th>"+countB+"</th><th>"+countC+"</th><th>"+countD+"</th><th>"+sum+"</th><th>"+sumAB+"</th><th>"+sumC+"</th><th>"+sumD+"</th>");
				     out.write("</tr>");
				   out.write("</tfoot");
				  out.write("</table>");
				  
			  }  
			  else if(i==0){
				  out.write("<center");
				  out.write("<h2>please give correct details</h2>"); 
				  out.write("<h1>&#10060;</h1>");
				  out.write("</center");
			  }
			  else if(i==2){
				  out.write("<center>");
				  out.write("<h2>please give correct Code No</h2>"); 
				  out.write("<h1>&#10060;</h1>");
				  out.write("</center>");
			  }
			  else if(i==3){
				  out.write("<center>");
				  out.write("<h2>please give correct TeacherId</h2>"); 
				  out.write("<h1>&#10060;</h1>");
				  out.write("</center>");
			  }
				out.write("</center>");
				out.write("</body>");
				out.write("</html>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
		}
	}

}
