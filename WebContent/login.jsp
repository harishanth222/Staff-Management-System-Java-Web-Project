<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SuperStaff | Login</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">
	 
	<link rel="stylesheet" type="text/css" href="css/login.css">
	
	  	<%
	  		if(session.getAttribute("mgrUname") != null) {
	  			response.sendRedirect("mgrDashboard.jsp");
	  		}
	  		else if(session.getAttribute("smUname") != null) {
	  			response.sendRedirect("smDashboard.jsp");
	  		}
	  	%>
	        
</head>
<body>

        <div class = "loginbox">
        <center>
                <h1>Login</h1><br>
                <form action = "login" method = "post">
                    <input type="text" name = "username" placeholder = "Username" class = "text" required><br><br>
                    <input type="password" name = "password" placeholder = "Password" class = "text" required><br><br>
                    <div id = "buttons"></div>
                    <input type="submit" value="Login as Staff Member" name = "staffMember" class = "button"><br>
                    <input type="submit" value="Login as Manager" name = "manager" class = "button">
                    </div>
                </form>
        </center>
        </div>
        <br><br>


</body>
</html>
