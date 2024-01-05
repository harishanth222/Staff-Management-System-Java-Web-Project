<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="ISO-8859-1">

<title>SuperStaff | Leaves List</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

<link rel="stylesheet" href="css/list.css">

  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.sms.model.Leave,com.sms.service.*,com.sms.util.*,java.util.*" %>
	
	

	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Leaves List</h1>
<div id="buttons">
  		<a href="smDashboard.jsp" style="border-radius: 5px;  
  							padding: 5px 10px; 
  							font-size: 22px;  
  							text-decoration: none;  
  							margin: 20px;  
  							color: #fff;  
  							position: relative;  
  							display: inline-block;
  							background-color: #9b59b6;
  							box-shadow: 0px 5px 0px 0px #82409D;" >DASHBOARD</a>
  							
</div>
	<table>
		<thead>
			<tr class="table100-head">
				<th>Leave ID</th>
				<th>Username</th>
				<th>Date From</th>
				<th>Date To</th>
				<th>Number of Days</th>
				<th>Type</th>
				<th>Reason</th>
				<th>Status</th>
				<th>View</th>
				<th>Delete</th>
				<th>Approve</th>
				<th>Reject</th>
			</tr>
		</thead>
			<tbody>
			
				<%
					ILeave iLv = new LeaveDBUtil();
				
					ArrayList<Leave> leaves = iLv.getAllLeave();
					
					for(Leave lv : leaves) {
					
				%>
				
				<tr>
					<td><c:out value="<%=lv.getLeaveID() %>" /></td>
					<td><c:out value="<%=lv.getUsername() %>" /></td>
					<td><c:out value="<%=lv.getDateFrom() %>" /></td>
					<td><c:out value="<%=lv.getDateTo() %>" /></td>
					<td><c:out value="<%=lv.getNoOfDays() %>" /></td>
					<td><c:out value="<%=lv.getType() %>" /></td>
					<td><c:out value="<%=lv.getReason() %>" /></td>
					<td><c:out value="<%=lv.getStatus() %>" /></td>
					<td><a class="button" href= "viewLeave?lvId=<%=lv.getLeaveID() %>" >View</a></td>
					<td><a class="button" href= "deleteLeave?lvId=<%=lv.getLeaveID() %>" >Delete</a></td>
					<%if(lv.getStatus().equalsIgnoreCase("Pending")) {%>
					<td><a class="button" href= "approveLeave?lvId=<%=lv.getLeaveID() %>" >Approve</a></td>
					<td><a class="button" href= "rejectLeave?lvId=<%=lv.getLeaveID() %>" >Reject</a></td>
					<%} else { %>
					<td></td>
					<td></td>
					<%} %>
				</tr>
			</tbody>
								
				<%
					}
				%>
		
	</table>
	</div>
</div>
</div>
</div>
</body>
</html>