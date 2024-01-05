<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    
	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/mgrForm.css">
	
    <%@ page import="com.sms.model.Manager,com.sms.service.*,com.sms.util.*,java.util.*" %>

<title>SuperStaff | Add Manager</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>

<body>
    
   <div class="container">
    <div class="title">Add Manager</div>
    <div class="content">
      
      <form action = "addManager" method = "post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" placeholder="Enter first name" name="firstName" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter last name" name="lastName" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" placeholder="Enter email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
          </div>
          <div class="input-box">
            <span class="details">Contact Number</span>
            <input type="tel" placeholder="Enter contact number" name="contactNo" pattern="^[0]\d{9,9}$" title="Must contain ten digits and begin with zero" required>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" placeholder="Enter username" name="username" pattern="^[a-zA-Z]([._](?![._])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$" title="Must contain at least five characters, begin with a letter and can contain only letters, numbers, period and underscore" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" placeholder="Enter password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
          </div>
        </div>

        <div class="button">
          <input id="submitBtn" type="submit" value="Add" class="btns">
          <input type="reset" name="Reset" class="btns">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>
