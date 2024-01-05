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

</head>

<body>
    
   <div class="container">
    <div class="title">Feedback</div>
    <div class="content">
      
      <form action = "addFeedback" method = "post">
        <div class="user-details">
        
        <input type="hidden" name="username" value="<%=(String)session.getAttribute("smUname")%>" readonly required>
        
          <div class="input-box">
            <span class="details">How did you find us?</span>
            <select name="find">
            	<option value="Another website">Another Website</option>
            	<option value="Search engine">A search engine</option>
            	<option value="Friend">A friend told me</option>
            	<option value="Email">From an email</option>
            	<option value="Other">Another way not listed here</option>
            </select>
          </div>

          <div class="input-box">
            <span class="details">How would you rate our work place ?</span>
                <input class="checkbox" type="radio" name="rating" value="Excellent" required> Excellent <br>
			    <input class="checkbox" type="radio" name="rating" value="Good" required> Good <br>
			    <input class="checkbox" type="radio" name="rating" value="Average" required> Average <br>
			    <input class="checkbox" type="radio" name="rating" value="Poor" required> Poor <br>
			    <input class="checkbox" type="radio" name="rating" value="Needs an overhaul" required> Needs an overhaul <br>
          </div>
          <div class="input-box">
            <span class="details">Comments or suggestions</span>
            	<textarea name="description" placeholder="Enter any comments or suggestions you have here"></textarea>
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
