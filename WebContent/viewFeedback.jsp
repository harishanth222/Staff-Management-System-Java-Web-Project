<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/view.css">
	

<title>SuperStaff | View Feedback</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("mgrUname") == null && session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
    
    <%@ page import="com.sms.model.Feedback,com.sms.service.*,com.sms.util.*,java.util.*" %>

</head>

<body>
    
    	<%
			Feedback fbk = (Feedback) request.getAttribute("fbk");
		%>
	
		
	<h1>Feedback</h1>
 
	 <table>
	  <tbody>					
	    <tr>
			<th>Feedback ID</th>    	
	     	<td><%=fbk.getFeedbackID() %></td>
	    </tr>
	    <tr>
			<th>Username</th>
	     	 <td><%=fbk.getUsername() %></td>
	    </tr>
	    <tr>
			<th>How did you find us?</th>
	     	 <td><%=fbk.getFind() %></td>
	    </tr>
	    <tr>
			<th>Rating</th>
	      	<td><%=fbk.getRating() %></td>
	    </tr>
	    <tr>
			<th>Description</th>
	      	<td><%=fbk.getDescription() %></td>
	    </tr>
	  </tbody>
	</table>


</body>
</html>
