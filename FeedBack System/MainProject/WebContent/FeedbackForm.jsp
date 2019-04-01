<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	    <form action="FeedbackFormController" method="post" name="feedback">
	      <div id="coursedetails" style="border-style: groove; width: 892px; font-size: 17px">
	        <table cellspacing="10"><caption><b>Subject</b></caption>
	          <tbody><tr>
	            <td><label for="Code_No"><b>Code NO</b></label></td><td><input type="text" name="codeno" id="codeno" maxlength="10" required></td></tr>
	            <tr><td>
	              <label for="Teachers_Id"><b>Teacher's ID</b></label></td><td><input type="text" name="teacherid"  id="teacherid"  required></td></tr>
	            <tr><td>
	              <label for="Teachers_Name"><b>Teacher's Name</b></label></td><td><input type="text" name="teachername" id="teachername" required></td></tr>
	            <tr><td>
	              <label for="Title"><b>Title</b></label></td><td><input type="text" name="title" id="title" required></td></tr>
	            <tr><td>
	              <label for="Academic_year"><b>Academic Year</b></label></td><td><input type="text" name="academicyear" id="academicyear" required></td></tr>
	          </tbody>
	        </table>
	      </div>
	      <br>
	      <pre>
	      </pre>
          <div id="partA" style="border-style: groove; width: 892px; font-size: 17px;"><b>
	        <table cellspacing="10">
	          <caption style=" margin-left: -140px"><b>Part A</b></caption>
	          <tbody style="color:#8893e0;">
	            <tr>
	              <td>1.</td><td>Year</td>
	              <td>
	                <input type="radio" name="year" value="one" required>I
	                <input type="radio" name="year" value="two">II
	                <input type="radio" name="year" value="three">III
	                <input type="radio" name="year" value="four">IV
	              </td>
	            </tr>
	            <tr>
	              <td>2.</td><td>Branch</td>
	              <td>&nbsp&nbsp
	                <select name="branch" style="color:#8893e0; font-size: 17px;" required>
	                  <option value="">select</option>
  	                  <option value="CHE">CHE</option>
  	                  <option value="CIVIL">CIVIL</option>
                 	  <option  value="CSE">CSE</option>
  	                  <option value="IT">IT</option>
  	                  <option value="ECE">ECE</option>
  	                  <option value="EEE">EEE</option>
  	                  <option value="MECH">MECH</option>
  	                  <option value="MBA">MBA</option>
  	                  <option value="MCA">MCA</option>
  	                  <option value="M.TECH">M.TECH</option>
	                </select>
	              </td>
	            </tr>
	            <tr>
	              <td>3.</td><td>Semester</td>
	              <td>&nbsp&nbsp
	                <select name="semester" style="color:#8893e0; font-size: 17px;" required>
	                  <option value="">select</option>
  	                  <option value="1">1</option>
  	                  <option value="2">2</option>
                 	  <option value="3">3</option>
  	                  <option value="4">4</option>
  	                  <option value="5">5</option>
  	                  <option value="6">6</option>
  	                  <option value="7">7</option>
  	                  <option value="8">8</option>
	                </select>
	              </td>
	            </tr>
	            <tr>
	              <td>4.</td><td>Section</td>
	              <td>
	                <input type="radio" name="section" value="A" required>A
	                <input type="radio" name="section" value="B">B
	                <input type="radio" name="section" value="C">C
	                <input type="radio" name="section" value="D">D
	              </td>
	            </tr>
	            <tr>
	              <td>5.</td><td>Your attendance for class work </td>
	              <td>&nbsp&nbsp
	                <select name="attendance" style="color:#8893e0; font-size: 17px;" required>
	                  <option value="">select</option>
  	                  <option value="grt85">&gt;85%</option>
  	                  <option value="75to85">75% to 85%</option>
  	                  <option  value="65to75" >65% to 75%</option>
  	                  <option value="65to75">50% to 65%</option>
  	                  <option value="lst50">&lt;50%</option>
	                </select>
	              </td>
	            </tr>
	            <tr>
	              <td>6.</td><td>Your marks in last year's annual examination (inclusive of internals) </td>
	              <td>&nbsp&nbsp
	                <select name="marks" style="color:#8893e0; font-size: 17px;" required>
	                  <option value="">select</option>
  	                  <option value="grt85">&gt;85%</option>
  	                  <option value="75to85">75% to 85%</option>
  	                  <option  value="65to75" >65% to 75%</option>
  	                  <option value="65to75">50% to 65%</option>
  	                  <option value="lst50">&lt;50%</option>
	                </select>
	              </td>
	            </tr>
	            <tr>
	              <td>7.</td><td>You assess yourself as</td>
	              <td>
	                <input type="radio" name="frequency" value="regular" required>Regular
	                <input type="radio" name="frequency" value="irregular">Irregular
	              </td>
	            </tr>
	            <tr>
	              <td>8.</td><td>You assess yourself as</td>
	              <td style="color:#8893e0; font-size: 16px;">
	                <input type="radio" name="performance" value="intelligent" required>Intelligent
	                <input type="radio" name="performance" value="aboveaverage">Above Average
	                <input type="radio" name="performance" value="average">Average
	                <input type="radio" name="performance" value="poor">Poor
	              </td>
	            </tr>
	            <tr>
	              <td>9.</td><td>Justification to your response for Q.No 5 & 6</td>
	              <td> <textarea rows="5" cols="50" name="comment" required></textarea></td>
	            </tr>
	          </tbody>
	        </table>
	      </b></div>
	      <pre>	
	      </pre>
	      <div id="partB" style="border-style: groove; width: 892px; font-size: 17px"><b>
	        <table cellspacing="10">
	          <caption style="margin-right: 180px"><b>Part B</b></caption>
	          <tbody style="color:#25c131;">
	          <br>
	          <tr>
	            <td>10.</td><td>Furnishing adequate information regarding what is to be covered in subject</td>
	            <td>&nbsp&nbsp
	              <select name="number10" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
              <tr>
	            <td>11.</td><td>The teacher's preparation for the class and his presentation of the subject matter</td>
	            <td>&nbsp&nbsp
	              <select name="number11" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>12.</td><td>The teacher's ability to represent graphs,Black Board work and working out illustration</td>
	            <td>&nbsp&nbsp
	              <select name="number12" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>13.</td><td>Teacher's ability to maintain discipline in class</td>
	            <td>&nbsp&nbsp
	              <select name="number13" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>14.</td><td>Coverage of Syllabus</td>
	            <td>&nbsp&nbsp
	              <select name="number14" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>15.</td><td>Teacher's ability to stimulate interest in the subject through question, discussion and the expression of opinion by students</td>
	            <td>&nbsp&nbsp
	              <select name="number15" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>16.</td><td>Teachers ability to relate theory to practical situations</td>
	            <td>&nbsp&nbsp
	              <select name="number16" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>17.</td><td>Testing and evaluation methods used by the teacher</td>
	            <td>&nbsp&nbsp
	              <select name="number17" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>18.</td><td>Fairness and impartiality to students</td>
	            <td>&nbsp&nbsp
	              <select name="number18" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>19.</td><td>Opportunities for contact with the teacher outside the class</td>
	            <td>&nbsp&nbsp
	              <select name="number19" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average" >Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
	          </tr>
	          <tr></tr>
	          <tr>
	            <td>20.</td><td>Teacher's attempt to teach students of different levels</td>
	            <td>&nbsp&nbsp
	              <select name="number20" style="color:#25c131; font-size: 17px;" required>
	                <option value="">select</option>
  	                <option value="excellent">Excellent</option>
  	                <option value="good">Good</option>
  	                <option  value="average">Average</option>
  	                <option value="poor">Poor</option>
	              </select>
	            </td>
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