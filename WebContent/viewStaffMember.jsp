<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperStaff | View Staff Member</title>
	<link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">
    <link rel="stylesheet" href="css/profile.css">
    
  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>
    
    <%@ page import="com.sms.model.StaffMember,com.sms.service.*,com.sms.util.*,java.util.*" %>
</head>
<body>

<aside class="profile-card">

		<%
			StaffMember sm = (StaffMember) request.getAttribute("sm");
		%>

  <header>

    <!-- here’s the avatar -->
    <a href="#">
      <img src="images/sm.png">
    </a>

    <!-- the username -->
    <h1><%=sm.getFirstName() + " " + sm.getLastName()%></h1>

    <!-- and position-->
    <h2><%=sm.getPosition()%></h2>

  </header>

  <!-- bit of a bio; who are you? -->
  <div class="profile-bio">

    <table>
        <tr>
            <td class="detail">Username</td>
            <td class="data"><%=sm.getUsername()%></td>
        </tr>
        <tr>
            <td class="detail">Email</td>
            <td class="data"><%=sm.getEmail()%></td>
        </tr>
        <tr>
            <td class="detail">Phone</td>
            <td class="data"><%=sm.getContactNo()%></td>
        </tr>
        <tr>
            <td class="detail">Salary</td>
            <td class="data"><%=sm.getSalary()%></td>
        </tr>
    </table>
  </div>


</aside>
</body>
</html>