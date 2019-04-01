<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student</title>
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
      
      <p id="description">
	      <b>
	        The questionnaire is intended primarily to enhance the effectiveness of instruction in the college. Please read the statements carefully, think to what extent they are applicable to you and your teacher and enter the appropriate response. Use the capital letters to fill the Subject part and also fill the academic year as follows e.g:- 2017-18 .
	      </b>
	    </p>
      <form action="StudentController" method="post" name="student">
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
	              <td>5.</td><td>Academic Year</td>
	              <td>&nbsp&nbsp<input type="text" name="academicyear" id="academicyear" required>(Ex:  2017-18)</td>
	            </tr>
	            <tr>
	              <td>6.</td><td>Your attendance for class work </td>
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
	              <td>7.</td><td>Your marks in last year's annual examination (inclusive of internals) </td>
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
	              <td>8.</td><td>You assess yourself as</td>
	              <td>
	                <input type="radio" name="frequency" value="regular" required>Regular
	                <input type="radio" name="frequency" value="irregular">Irregular
	              </td>
	            </tr>
	            <tr>
	              <td>9.</td><td>You assess yourself as</td>
	              <td style="color:#8893e0; font-size: 16px;">
	                <input type="radio" name="performance" value="intelligent" required>Intelligent
	                <input type="radio" name="performance" value="aboveaverage">Above Average
	                <input type="radio" name="performance" value="average">Average
	                <input type="radio" name="performance" value="poor">Poor
	              </td>
	            </tr>
	            <tr>
	              <td>10.</td><td>Justification to your response for Q.No 5 & 6</td>
	              <td> <textarea rows="5" cols="50" name="comment" required></textarea></td>
	            </tr>
	          </tbody>
	        </table>
	      </b></div>
	    </div>
	    <input type="hidden" value="validateStudent" name="action"/>
	      <input type="submit" value="next" name="next"/>
	    </form>
</center>

</body>
</html>