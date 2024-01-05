<!DOCTYPE html>

<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta charset="ISO-8859-1">

<title>SuperStaff | Manager List</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

<link rel="stylesheet" href="css/list.css">
<link rel="stylesheet" href="css/list-search.css">

  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.sms.model.Manager,com.sms.service.*,com.sms.util.*,java.util.*" %>
	
	

	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Manager List</h1>
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
  							
  		<a href="addManager.jsp" style="border-radius: 5px;  
  							padding: 5px 10px; 
  							font-size: 22px;  
  							text-decoration: none;  
  							margin: 20px;  
  							color: #fff;  
  							position: relative;  
  							display: inline-block;
  							background-color: #9b59b6;
  							box-shadow: 0px 5px 0px 0px #82409D;" >ADD NEW MANAGER</a>
  							
   		<form action="searchManager" class="search-bar" method="get">
			<input type="search" name="username" placeholder=" Username" required>
			<button class="search-btn" type="submit">
				<span>Search</span>
			</button>
		</form>
</div>
	<table>
		<thead>
			<tr class="table100-head">
				<th>Manager ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Contact Number</th>
				<th>Username</th>
				<th>Password</th>
				<th>View</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
			<tbody>
			
				<%
					IManager iMgr = new ManagerDBUtil();
				
					ArrayList<Manager> managers = iMgr.getAllManager();
					
					for(Manager sm : managers) {
					
				%>
				
				<tr>
					<td><c:out value="<%=sm.getManagerID() %>" /></td>
					<td><c:out value="<%=sm.getFirstName() %>" /></td>
					<td><c:out value="<%=sm.getLastName() %>" /></td>
					<td><c:out value="<%=sm.getEmail() %>" /></td>
					<td><c:out value="<%=sm.getContactNo() %>" /></td>
					<td><c:out value="<%=sm.getUsername() %>" /></td>
					<td><c:out value="<%=sm.getPassword() %>"/></td>
					<td><a class="button" href= "viewManager?mgrId=<%=sm.getManagerID() %>" >View</a></td>
					<td><a class="button" href= "editManager?mgrId=<%=sm.getManagerID() %>" >Edit</a></td>
					<td><a class="button" href= "deleteManager?mgrId=<%=sm.getManagerID() %>" >Delete</a></td>
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