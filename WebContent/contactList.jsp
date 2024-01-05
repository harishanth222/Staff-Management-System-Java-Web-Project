<!DOCTYPE html>

<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta charset="ISO-8859-1">

<title>SupersStaff | Contact List</title>
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
<%@ page import="com.sms.model.Contact,com.sms.service.*,com.sms.util.*,java.util.*" %>
	
	

	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Contact List</h1>
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
				<th>Contact ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Message</th>
				<th>Reply</th>
				<th>Delete</th>
			</tr>
		</thead>
			<tbody>
			
				<%
					IContact iCt = new ContactDBUtil();
				
					ArrayList<Contact> contacts = iCt.getAllContact();
					
					for(Contact c : contacts) {
					
				%>
				
				<tr>
					<td><c:out value="<%=c.getContactID() %>" /></td>
					<td><c:out value="<%=c.getName() %>" /></td>
					<td><c:out value="<%=c.getEmail() %>" /></td>
					<td><c:out value="<%=c.getMessage() %>" /></td>
					<td><a class="button" href= "mailto:<%=c.getEmail() %>?subject=Re:%20SuperStaff%20Customer%20Support" >Reply</a></td>
					<td><a class="button" href= "deleteContact?contactId=<%=c.getContactID() %>" >Delete</a></td>
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