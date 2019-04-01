<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.lang.*,com.pavan.model.FeedbackForm" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course</title>
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
//int donorID=Integer.parseInt(request.getAttribute("donorID").toString());

//request.getAttribute("servletName") method will return Object that you need to cast to ArrayList

ArrayList<FeedbackForm> dummyList =new ArrayList<FeedbackForm>();
dummyList = (ArrayList<FeedbackForm>)request.getAttribute("feedBackList");
	    /* out.print(dummyList.get(1).getCodeNo()); */

%>
	    <form action="CourseController" method="post" name="course">
	      <div id="coursedetails" style="border-style: groove; width: 892px; font-size: 17px">
	        <table cellspacing="10"><caption><b>Subject</b></caption>
	          <tbody><tr>
	            <td><label for="Code_No"><b>Code NO</b></label></td><td><select  name="codeno" id="codeno" style="color:#25c131; font-size: 17px;" required>
	            <option value=""> select</option>
	            <%

for(int i=0; i < dummyList.size(); i++)
{	
%>
<option value="<%=dummyList.get(i).getCodeNo()%>"> <%=dummyList.get(i).getCodeNo()%></option>
<% } %></select></td></tr>
	            
	            
	          </tbody>
	        </table>
	      </div>
	      <br>
	      <pre>	
	      </pre>
	      <input type="hidden" value="validateCourse" name="action">
	      <input type="submit" value="next" name="next">
	      </form> 
      </div>
    </center>
  </body>
</body>
</html>