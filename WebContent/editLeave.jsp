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

  	<%@ page import="com.sms.model.Leave,com.sms.service.*,com.sms.util.*,java.util.*" %>

</head>

<body>
    
   <div class="container">
    <div class="title">Leave Application</div>
    <div class="content">
      
      <form action = "updateLeave" method = "post">
        <div class="user-details">
        
        <%
			Leave lv = (Leave) request.getAttribute("lv");
		%>
        
          <input type="hidden" name="lvId" value="<%=lv.getLeaveID() %>" readonly required>
          <input type="hidden" name="username" value="<%=lv.getUsername() %>" readonly required>
          
          <div class="input-box">
            <span class="details">Date From</span>
            <input type="date" name="dateFrom" value="<%=lv.getDateFrom() %>" required>
          </div>
          <div class="input-box">
            <span class="details">Date To</span>
            <input type="date" name="dateTo" value="<%=lv.getDateTo() %>" required>
          </div>
          <div class="input-box">
            <span class="details">Number of Days</span>
            <input type="number" name="noOfDays" placeholder="Enter number of days" min="1" max="365" value="<%=lv.getNoOfDays() %>" required>
          </div>
          <div class="input-box">
            <span class="details">Type of Leave</span>
            <select name="type">
            	<option value="Paid Day-off" <%if(lv.getType().equalsIgnoreCase("Paid Day-off")) {%> selected <%} %>>Paid Day-off</option>
            	<option value="Annual Leave" <%if(lv.getType().equalsIgnoreCase("Annual Leave")) {%> selected <%} %>>Annual Leave</option>
            	<option value="Sick Leave" <%if(lv.getType().equalsIgnoreCase("Sick Leave")) {%> selected <%} %>>Sick Leave</option>
            	<option value="Hospitalisation Leave" <%if(lv.getType().equalsIgnoreCase("Hospitalisation Leave")) {%> selected <%} %>>Hospitalisation Leave</option>
            	<option value="No Pay Leave" <%if(lv.getType().equalsIgnoreCase("No Pay Leave")) {%> selected <%} %>>No Pay Leave</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Reasons for absence</span>
				<textarea name="reason" placeholder="Enter reasons for absence"><%=lv.getReason() %></textarea>
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
