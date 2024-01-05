<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="ISO-8859-1">

<title>SuperStaff | Feedback List</title>
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
<%@ page import="com.sms.model.Feedback,com.sms.service.*,com.sms.util.*,java.util.*" %>
	
	

	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Feedback List</h1>
<div id="buttons">
  		<a href="mgrDashboard.jsp" style="border-radius: 5px;  
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
				<th>Feedback ID</th>
				<th>Username</th>
				<th>How did you find us?</th>
				<th>Rating</th>
				<th>Description</th>
				<th>View</th>
				<th>Delete</th>
			</tr>
		</thead>
			<tbody>
			
				<%
					IFeedback iFbk = new FeedbackDBUtil();
				
					ArrayList<Feedback> feedbacks = iFbk.getAllFeedback();
					
					for(Feedback fbk : feedbacks) {
					
				%>
				
				<tr>
					<td><c:out value="<%=fbk.getFeedbackID() %>" /></td>
					<td><c:out value="<%=fbk.getUsername() %>" /></td>
					<td><c:out value="<%=fbk.getFind() %>" /></td>
					<td><c:out value="<%=fbk.getRating() %>" /></td>
					<td><c:out value="<%=fbk.getDescription() %>" /></td>
					<td><a class="button" href= "viewFeedback?fbkId=<%=fbk.getFeedbackID() %>" >View</a></td>
					<td><a class="button" href= "deleteFeedback?fbkId=<%=fbk.getFeedbackID() %>" >Delete</a></td>
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