<!DOCTYPE html>

<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta charset="ISO-8859-1">

<title>SuperStaff | Payment List</title>
<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

<link rel="stylesheet" href="css/list.css">
<link rel="stylesheet" href="css/list-search.css">

  	<%
  		if(session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.sms.model.Payment,com.sms.service.*,com.sms.util.*,java.util.*" %>
	
	

	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Wages List</h1>
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
				<th>Payment ID</th>
				<th>By</th>
				<th>Method</th>
				<th>Amount</th>
				<th>Date</th>
				<th>Description</th>
				<th>View</th>
			</tr>
		</thead>
			<tbody>
			
				<%
					IPayment iPay = new PaymentDBUtil();
				
					ArrayList<Payment> payments = iPay.getPayment((String)session.getAttribute("smUname"));
					
					for(Payment pay : payments) {
					
				%>
				
				<tr>
					<td><c:out value="<%=pay.getPaymentID() %>" /></td>
					<td><c:out value="<%=pay.getPaidBy() %>" /></td>
					<td><c:out value="<%=pay.getMethod() %>" /></td>
					<td><c:out value="<%=pay.getAmount() %>" /></td>
					<td><c:out value="<%=pay.getDate() %>" /></td>
					<td><c:out value="<%=pay.getDescription() %>"/></td>
					<td><a class="button" href= "viewPayment?payId=<%=pay.getPaymentID() %>" >View</a></td>
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