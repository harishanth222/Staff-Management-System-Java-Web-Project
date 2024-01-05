<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    
    <meta charset="ISO-8859-1">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="css/paymentForm.css">
    

	<title>SuperStaff | Add Payment</title>
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
      
      <form action = "addPayment" method = "post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">To</span>
            <input type="text" placeholder="Enter staff member username" name="paidTo" required>
          </div>
          <div class="input-box">
            <span class="details">By</span>
            <input type="text" placeholder="Enter manager username" value="<%=(String)session.getAttribute("mgrUname") %>" name="paidBy" required>
          </div>
          <div class="input-box">
            <span class="details">Method</span>
            <select name="method">
                <option value="Direct Deposit">Direct Deposit</option>
                <option value="Check">Check</option>
                <option value="Annual Leave">Pay Card</option>
                <option value="Mobile Wallet">Mobile Wallet</option>
            </select>
          </div>
          <div class="input-box">
            <span class="details">Amount</span>
            <input type="text" placeholder="Enter amount" name="amount" required>
          </div>
          <div class="input-box">
            <span class="details">Date</span>
            <input type="date" name="date" required>
          </div>
          <div class="input-box">
            <span class="details">Description</span>
            <input type="text" placeholder="Enter description" name="description" required>
          </div>
        </div>

        <div class="button">
          <input id="submitBtn" type="submit" value="Add" class="btns">
          <input type="reset" name="Reset" class="btns">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>
