<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/view.css">
	

<title>SuperStaff | View Payment</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("mgrUname") == null && session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
    
    <%@ page import="com.sms.model.Payment,com.sms.service.*,com.sms.util.*,java.util.*" %>

</head>

<body>
    
    	<%
			Payment pay = (Payment) request.getAttribute("pay");
		%>
	
		
	<h1>Payment</h1>
 
	 <table>
	  <tbody>					
	    <tr>
			<th>Payment ID</th>    	
	     	<td><%=pay.getPaymentID() %></td>
	    </tr>
	    <tr>
			<th>To</th>
	     	 <td><%=pay.getPaidTo() %></td>
	    </tr>
	    <tr>
			<th>By</th>
	     	 <td><%=pay.getPaidBy() %></td>
	    </tr>
	    <tr>
			<th>Method</th>
	     	 <td><%=pay.getMethod() %></td>
	    </tr>
	    <tr>
			<th>Amount</th>
	     	 <td><%=pay.getAmount() %></td>
	    </tr>
	    <tr>
			<th>Date</th>
	     	 <td><%=pay.getDate() %></td>
	    </tr>
	    <tr>
			<th>Description</th>
	      	<td><%=pay.getDescription() %></td>
	    </tr>
	  </tbody>
	</table>


</body>
</html>
