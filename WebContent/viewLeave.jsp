<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/view.css">
	

<title>SuperStaff | View Leave</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("mgrUname") == null && session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
    
    <%@ page import="com.sms.model.Leave,com.sms.service.*,com.sms.util.*,java.util.*" %>

</head>

<body>
    
    	<%
			Leave lv = (Leave) request.getAttribute("lv");
		%>
	
		
	<h1>Leave</h1>
 
	 <table>
	  <tbody>					
	    <tr>
			<th>Leave ID</th>    	
	     	<td><%=lv.getLeaveID() %></td>
	    </tr>
	    <tr>
			<th>Username</th>
	     	 <td><%=lv.getUsername() %></td>
	    </tr>
	    <tr>
			<th>Date From</th>
	     	 <td><%=lv.getDateFrom() %></td>
	    </tr>
	    <tr>
			<th>Date To</th>
	     	 <td><%=lv.getDateTo() %></td>
	    </tr>
	    <tr>
			<th>Number of Days</th>
	     	 <td><%=lv.getNoOfDays() %></td>
	    </tr>
	    <tr>
			<th>Type</th>
	     	 <td><%=lv.getType() %></td>
	    </tr>
	    <tr>
			<th>Reason</th>
	      	<td><%=lv.getReason() %></td>
	    </tr>
	    <tr>
			<th>Status</th>
	      	<td><%=lv.getStatus() %></td>
	    </tr>
	  </tbody>
	</table>


</body>
</html>
