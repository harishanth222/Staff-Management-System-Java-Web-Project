<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/feedbackForm.css">
	

	<title>SuperStaff | Feedback</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">

  	<%
  		if(session.getAttribute("smUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
  	
  	<%@ page import="com.sms.model.Feedback,com.sms.service.*,com.sms.util.*,java.util.*" %>

</head>

<body>
    
   <div class="container">
    <div class="title">Feedback</div>
    <div class="content">
      
      <form action = "updateFeedback" method = "post">
        <div class="user-details">
        
        <%
			Feedback fbk = (Feedback) request.getAttribute("fbk");
		%>
        
        <input type="hidden" name="fbkId" value="<%=fbk.getFeedbackID() %>" readonly required>
        <input type="hidden" name="username" value="<%=fbk.getUsername() %>" readonly required>
        
          <div class="input-box">
            <span class="details">How did you find us?</span>
            <select name="find">
            	<option value="Another website" <%if(fbk.getFind().equals("Another website")) {%> selected <%} %>>Another Website</option>
            	<option value="Search engine" <%if(fbk.getFind().equals("Search engine")) {%> selected <%} %>>A search engine</option>
            	<option value="Friend" <%if(fbk.getFind().equals("Friend")) {%> selected <%} %>>A friend told me</option>
            	<option value="Email" <%if(fbk.getFind().equals("Email")) {%> selected <%} %>>From an email</option>
            	<option value="Other" <%if(fbk.getFind().equals("Other")) {%> selected <%} %>>Another way not listed here</option>
            </select>
          </div>

          <div class="input-box">
            <span class="details">How would you rate our work place ?</span>
                <input class="checkbox" type="radio" name="rating" value="Excellent" required <%if(fbk.getRating().equals("Excellent")) {%> checked <%} %>> Excellent <br>
			    <input class="checkbox" type="radio" name="rating" value="Good" required <%if(fbk.getRating().equals("Good")) {%> checked <%} %>> Good <br>
			    <input class="checkbox" type="radio" name="rating" value="Average" required <%if(fbk.getRating().equals("Average")) {%> checked <%} %>> Average <br>
			    <input class="checkbox" type="radio" name="rating" value="Poor" required <%if(fbk.getRating().equals("Poor")) {%> checked <%} %>> Poor <br>
			    <input class="checkbox" type="radio" name="rating" value="Needs an overhaul" required <%if(fbk.getRating().equals("Needs an overhaul")) {%> checked <%} %>> Needs an overhaul <br>
          </div>
          <div class="input-box">
            <span class="details">Comments or suggestions</span>
            	<textarea name="description" rows="5" placeholder="Enter any comments or suggestions you have here"><%=fbk.getDescription() %></textarea>
          </div>

        </div>

        <div class="button">
          <input id="submitBtn" type="submit" value="Submit" class="btns">
          <input type="reset" name="Reset" class="btns">
        </div>
      </form>
      
    </div>
  </div>

</body>
</html>
