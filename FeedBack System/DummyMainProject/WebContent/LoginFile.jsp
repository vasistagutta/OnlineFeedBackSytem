<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login File</title>
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
      input[type=text],input[type=password]{
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
           background-color: #f7f0f0;
          }
      input[type=submit]{
                         width: 100px;
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
    <script>
    window.onload = function(){
        function handleinput(){
            if((document.loginform.username.value == "")||(document.loginform.password.value == "")){
                document.getElementById("error").innerHTML = "Invalid Login";
                return false;
            }
        }
    } 
     
    </script>
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
	      <h2>Login to FeedBack Form</h2>
	    </div>
	    <pre>
	    </pre>
	    <form action="LoginController" method="post" name="loginform"  >
	      <div id="login" style="border-style:groove; ; width: 892px;">
	        <b style="font-size: 28px; color:#b817e0; "> Student Login Form</b>
	        <table cellspacing="10">
	          <col width="150">
              <col width="300">
	          <tbody>
	            <tr>
	              <td>
	                <label for="User_Name" class="labelfont"><b>Username</b></label>
	              </td>
	              <td>
	                <input type="text" name="username" id="username" required>  
	              </td>
	            </tr>
	            <tr>
	              <td>
	                <label for="Password" class="labelfont"><b>Password</b></label>
	              </td>
	              <td>
	                <input type="password" name="password" id="password" required>  
	              </td>
	            </tr>
	          </tbody>
	        </table>
	        <span id="error"></span>
	        <input type="hidden" value="validateLogin" name="action">
	        <input type="submit" value="login">
	      </div>
	    </form>
      </center>  	
    </div>	
  </body>
</html>