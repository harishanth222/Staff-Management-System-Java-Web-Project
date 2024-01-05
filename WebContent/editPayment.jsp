<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    
    <meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/paymentForm.css">
    
    <%@ page import="com.sms.model.Payment,com.sms.service.*,com.sms.util.*,java.util.*" %>

	<title>SuperStaff | Edit Payment</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>

<body>
    
   <div class="container">
    <div class="title">Payment</div>
    <div class="content">
      
      <form action = "updatePayment" method = "post">
      
		<%
			Payment pay = (Payment) request.getAttribute("pay");
		%>
		
        <div class="user-details">
        
          <input type="hidden" name="payId" value="<%=pay.getPaymentID() %>" readonly required>

          <div class="input-box">
            <span class="details">To</span>
            <input type="text" placeholder="Enter staff member username" name="paidTo" value="<%=pay.getPaidTo() %>" required>
          </div>
          <div class="input-box">
            <span class="details">By</span>
            <input type="text" placeholder="Enter manager username" value="<%=pay.getPaidBy() %>" name="paidBy" required>
          </div>
          <div class="input-box">
            <span class="details">Method</span>
            <select name="method">
                <option value="Direct Deposit" <%if(pay.getMethod().equalsIgnoreCase("Direct Deposit")) { %> selected <%} %>>Direct Deposit</option>
                <option value="Check" <%if(pay.getMethod().equalsIgnoreCase("Check")) { %> selected <%} %>>Check</option>
                <option value="Annual Leave" <%if(pay.getMethod().equalsIgnoreCase("Annual Leave")) { %> selected <%} %>>Pay Card</option>
                <option value="Mobile Wallet" <%if(pay.getMethod().equalsIgnoreCase("Mobile Wallet")) { %> selected <%} %>>Mobile Wallet</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Amount</span>
            <input type="text" placeholder="Enter amount" name="amount" value="<%=pay.getAmount() %>" required>
          </div>
          <div class="input-box">
            <span class="details">Date</span>
            <input type="date" name="date" value="<%=pay.getDate() %>" required>
          </div>
          <div class="input-box">
            <span class="details">Description</span>
            <input type="text" placeholder="Enter description" name="description" value="<%=pay.getDescription() %>" required>
          </div>
        </div>

        <div class="button">
          <input id="submitBtn" type="submit" value="Update" class="btns">
          <input type="reset" name="Reset" class="btns">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>
