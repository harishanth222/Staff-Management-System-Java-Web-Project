<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    
	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/leaveForm.css">
	

	<title>SuperStaff | Leave</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>


</head>

<body>
    
   <div class="container">
    <div class="title">Leave Application</div>
    <div class="content">
      
      <form action = "addLeave" method = "post">
        <div class="user-details">
        
          <input type="hidden" name="username" value="<%=(String)session.getAttribute("smUname")%>" readonly required>
          
          <div class="input-box">
            <span class="details">Date From</span>
            <input type="date" name="dateFrom" required>
          </div>
          <div class="input-box">
            <span class="details">Date To</span>
            <input type="date" name="dateTo" required>
          </div>
          <div class="input-box">
            <span class="details">Number of Days</span>
            <input type="number" name="noOfDays" placeholder="Enter number of days" min="1" max="365" required>
          </div>
          <div class="input-box">
            <span class="details">Type of Leave</span>
            <select name="type">
            	<option value="Paid Day-off">Paid Day-off</option>
            	<option value="Annual Leave">Annual Leave</option>
            	<option value="Sick Leave">Sick Leave</option>
            	<option value="Hospitalisation Leave">Hospitalisation Leave</option>
            	<option value="No Pay Leave">No Pay Leave</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Reasons for absence</span>
				<textarea name="reason" placeholder="Enter reasons for absence"></textarea>
          </div>

        </div>

        <div class="button">
          <input id="submitBtn" type="submit" value="Submit" class="btns">
          <input type="reset" name="Reset" class="btns">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>
