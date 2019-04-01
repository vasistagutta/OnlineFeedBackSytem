<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<style type="text/css">
      .boxed {
 	          width: 892px;
              border-style: outset;
              border-bottom-color: #08f108;
              border-right-color:#08f108; 
             }

      h2{
         color:#5f5992;
        } 
      input[type=text]{
                           width: 100%;
                           padding: 8px 20px;
                           margin: 8px 0;
                           border-radius: 4px;
                           display: compact; 
                      } 
      .labelfont{
                 font-size: 20px;
                 color: teal; 
                }  
      body{
           background-color: #f1f1f1;
          }
      input[type=submit]{
                         width: 25%;
                         background-color: #76ff21;
                         color: #000000;
                         padding: 14px 20px;
                         margin: 8px 0;
                         border: none;
                         border-radius: 4px;
                         font-size: 20px ;
                         font-weight: bolder; ;
                        }                 
    </style>
</head>
<body>
<div id="login">
      <center>
        <div id="headerlogo">
		  <img src="images/RVRJC_LOGO_FINAL1.jpg" width="900px" height="110px" alt="Logo" >	
        </div>
        <pre>
        </pre>
        <div class="boxed">
	      <h2>Administrator</h2>
	    </div>
	    <pre>
	    </pre>
	    <form action="AdministratorController" method="post" name="Administrator" >
	      <div id="facultylogin" style="border-style:groove; ; width: 892px;">
	        <b style="font-size: 28px; color:#b817e0; "> Administrator Login Form </b>
	        <table cellspacing="10">
	          <col width="150">
              <col width="300">
	          <tbody>
	            <tr>
	              <td>
	                <label for="teacher_id" class="labelfont"><b>Teacher_ID</b></label>
	              </td>
	              <td>
	                <input type="text" name="teacherid" id="teacherid" required>  
	              </td>
	            </tr>
	            <tr>
	              <td>
	                <label for="subject_code" class="labelfont"><b>Subject_Code</b></label>
	              </td>
	              <td>
	                <input type="text" name="subjetcode" id="subjetcode" required>  
	              </td>
	            </tr>
	            <tr>
	              <td>
	                <label for="Branch" class="labelfont"><b>Branch</b></label>
	              </td>
	              <td>&nbsp&nbsp
	                <select name="branch" style="font-size: 17px;" required>
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
	              <td>
	                <label for="Semester" class="labelfont"><b>Semester</b></label>
	              </td>
	              <td>&nbsp&nbsp
	                <select name="semester" style="font-size: 17px;" required>
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
	              <td>
	                <label for="Section" class="labelfont"><b>Section</b></label>
	              </td>
	              <td>
	                <input type="radio" name="section" value="A" required>A
	                <input type="radio" name="section" value="B">B
	                <input type="radio" name="section" value="C">C
	                <input type="radio" name="section" value="D">D
	              </td>
	            </tr>
	            <tr>
	              <td>
	                <label for="academic_year" class="labelfont"><b>Academic_Year</b></label>
	              </td>
	              <td>
	                <input type="text" name="academicyear" id="academicyear" required>  
	              </td>
	            </tr>
	          </tbody>
	        </table>
	        <input type="hidden" value="validateAdministrator" name="action">
	        <input type="submit" value="feedback Form">
	      </div>
	    </form>
      </center>  	
    </div>	

</body>
</html>