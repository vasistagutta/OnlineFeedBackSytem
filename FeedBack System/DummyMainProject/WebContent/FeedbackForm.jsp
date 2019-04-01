
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.lang.*,com.pavan.model.FeedbackForm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Feedback Form</title>
    <style type="text/css">
      .boxed {
 	          width: 892px;
              border-style: outset;
              border-bottom-color: #08f108;
              border-right-color:#08f108;
              font-size: 21px; 
             }
             
      #description{
                   width:892px;
                   color:#aba2a9;
                   font-size: 18px;
                  }
      h2{
         color:#5f5992;
        } 
      caption{  
              font-size: 20px; 
              color:#e0173c; 
             } 
      body{
           background-image: url(images/feed2.jpg);
           background-repeat: repeat-y;
          }  
      input[type=submit] {
                          width: 15%;
                          background-color: #4CAF50;
                          color: white;
                          padding: 14px 20px;
                          margin: 8px 0;
                          border: none;
                          border-radius: 4px;
                        }   
    </style>
  </head>
  <body>
    <center>
      <div id="innerbody">
	    <div id="headerlogo">
		  <img src="images/NEW_RVR_LOGO.jpg" width="900px" height="110px" alt="Logo" >	
	    </div>
	    <div class="boxed">
	      <h2>TEACHER EVALUATION QUESTIONNAIRE</h2>
	    </div>
	    <p id="description">
	      <b>
	        The questionnaire is intended primarily to enhance the effectiveness of instruction in the college. Please read the statements carefully, think to what extent they are applicable to you and your teacher and enter the appropriate response. Use the capital letters to fill the Subject part and also fill the academic year as follows e.g:- 2017-18 .
	      </b>
	    </p>
	    <pre>
	    </pre>
	    <%

	    String CourseID=session.getAttribute("CodeNo").toString();
	    String CourseName=session.getAttribute("Title").toString();
	    String EID=session.getAttribute("TeacherID").toString();	
	    String EName=session.getAttribute("TeacherName").toString();
	    %>
	   
	    <form action="FeedbackFormController" method="post" name="feedback">
	      <div id="coursedetails" style="border-style: groove; width: 892px; font-size: 17px">
	        <table cellspacing="10"><caption><b>Subject</b></caption>
	          <tbody><tr>
	            <td><label for="Code_No"><b>Code NO</b></label></td><td>
	               <label for="<%=CourseID %>"><b><%=CourseID %></b></label> 
	            </td></tr>
	            <tr>
	            <td><label for="Code_Name"><b>Title</b></label></td><td>
	               <label for="<%=CourseName %>"><b><%=CourseName %></b></label> 
	            </td></tr>
	            <tr>
	            <td><label for="E_ID"><b>Teacher ID</b></label></td><td>
	               <label for="<%=EID %>"><b><%=EID %></b></label> 
	            </td></tr>
	            <tr>
	            <td><label for="E_Name"><b>Teacher Name</b></label></td><td>
	               <label for="<%=EName %>"><b><%=EName %></b></label> 
	            </td></tr>
	            
	            
	          </tbody>
	        </table>
	      </div>
	      <br>
	      <pre>	
	      </pre>
	      <div id="partB" style="border-style: groove; width: 892px; font-size: 17px"><b>
	        <table cellspacing="10">
	          <caption style="margin-right: 180px"><b>Part B</b></caption>
	          <tbody style="color:#25c131;">
	          <br>
	          <tr>
	            <td>10.</td><td>Furnishing adequate information regarding what is to be covered in subject</td></tr>
	              <!-- <select name="number10" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select> -->
	               <tr><td></td><td><input type="radio" name="number10" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number10" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number10" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number10" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
              <tr style="color:#8893e0;">
	            <td>11.</td><td>The teacher's preparation for the class and his presentation of the subject matter</td></tr>
	             <!--<td>&nbsp&nbsp
	              <select name="number11" style="color:#8893e0; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td> -->
	            <tr style="color:#8893e0;"><td></td><td><input type="radio" name="number11" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number11" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number11" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number11" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#e430e6;">
	            <td>12.</td><td>The teacher's ability to represent graphs,Black Board work and working out illustration</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number12" style="color:#e430e6; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr style="color:#e430e6;"><td></td><td><input type="radio" name="number12" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number12" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number12" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number12" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>13.</td><td>Teacher's ability to maintain discipline in class</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number13" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr><td></td><td><input type="radio" name="number13" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number13" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number13" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number13" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#8893e0;">
	            <td>14.</td><td>Coverage of Syllabus</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number14" style="color:#8893e0; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td> 
	          </tr> -->
	          <tr style="color:#8893e0;"><td></td><td><input type="radio" name="number14" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number14" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number14" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number14" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#e430e6;">
	            <td>15.</td><td>Teacher's ability to stimulate interest in the subject through question, discussion and the expression of opinion by students</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number15" style="color:#e430e6; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr style="color:#e430e6"><td></td><td><input type="radio" name="number15" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number15" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number15" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number15" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>16.</td><td>Teachers ability to relate theory to practical situations</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number16" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr><td></td><td><input type="radio" name="number16" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number16" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number16" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number16" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#8893e0;">
	            <td>17.</td><td>Testing and evaluation methods used by the teacher</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number17" style="color:#8893e0; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td> 
	          </tr> -->
	          <tr style="color:#8893e0;"><td></td><td><input type="radio" name="number17" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number17" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number17" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number17" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#e430e6;">
	            <td>18.</td><td>Fairness and impartiality to students</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number18" style="color:#e430e6; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr style="color:#e430e6;"><td></td><td><input type="radio" name="number18" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number18" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number18" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number18" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>19.</td><td>Opportunities for contact with the teacher outside the class</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number19" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr><td></td><td><input type="radio" name="number19" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number19" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number19" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number19" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          <tr style="color:#8893e0;">
	            <td>20.</td><td>Teacher's attempt to teach students of different levels</td></tr>
	            <!-- <td>&nbsp&nbsp
	              <select name="number20" style="color:#8893e0; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average">Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr> -->
	          <tr style="color:#8893e0;"><td></td><td><input type="radio" name="number20" value="excellent" required>Excellent
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number20" value="good">Good
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number20" value="average">Average
	                &nbsp;&nbsp;&nbsp;<input type="radio" name="number20" value="poor">Poor</td>
	          </tr>
	          <tr></tr>
	          </tbody>
	        </table>
	      </b></div>
	      <div id="opinion" style="margin-right: 300px;">
	        <b>
	          <table>
	            <tbody style="color:#e430e6; font-size: 17px;">
	              <tr>
	                <td></td><td><h3 style="color:#e0173c;"><b>In your opinion</b></h3></td>
	              </tr>
	              <tr>
	                <td>21.</td><td>The teacher's strong point</td>
	                <td><textarea style="margin-left: 20px" rows="3" cols="50" name="strongpoint" required></textarea></td>
	              </tr>
	              <tr>
	                <td>22.</td><td>The teacher's weak point</td>
	                <td><textarea  style="margin-left: 20px" rows="3" cols="50" name="weakpoint" required></textarea></td>
	              </tr>
	              <tr>
	                <td>23.</td><td>Any other suggestions</td>
	                <td><textarea style="margin-left: 20px" rows="3" cols="50" name="suggestion" required></textarea></td>
	              </tr>
	            </tbody>
	          </table>
	        </b>
	      </div>
	      <br><br>
	      <input type="hidden" value="validateFeedBack" name="action">
	      <input type="submit" value="submit" name="submit">
	      
	    </form> 
      </div>
    </center>
  </body>
</html>