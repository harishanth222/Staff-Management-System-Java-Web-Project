<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperStaff | View Manager</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">
    <link rel="stylesheet" href="css/profile.css">
    
  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
    
    <%@ page import="com.sms.model.Manager,com.sms.service.*,com.sms.util.*,java.util.*" %>
</head>
<body>

<aside class="profile-card">

		<%
			Manager mgr = (Manager) request.getAttribute("mgr");
		%>

  <header>

    <!-- here’s the avatar -->
    <a href="#">
      <img src="images/mgr.png">
    </a>

    <!-- the username -->
    <h1><%=mgr.getFirstName() + " " + mgr.getLastName()%></h1>

    <!-- and position-->
    <h2>Manager</h2>

  </header>

  <!-- bit of a bio; who are you? -->
  <div class="profile-bio">

    <table>
        <tr>
            <td class="detail">Username</td>
            <td class="data"><%=mgr.getUsername()%></td>
        </tr>
        <tr>
            <td class="detail">Email</td>
            <td class="data"><%=mgr.getEmail()%></td>
        </tr>
        <tr>
            <td class="detail">Phone</td>
            <td class="data"><%=mgr.getContactNo()%></td>
        </tr>
    </table>
  </div>


</aside>
</body>
</html>