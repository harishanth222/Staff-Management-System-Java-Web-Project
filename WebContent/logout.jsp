<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuperStaff | Logout</title>
</head>
<body>
	
	<%

	if(session.getAttribute("mgrUname") != null) {
		session.removeAttribute("mgrUname");
  	}
	else if(session.getAttribute("smUname") != null) {
		session.removeAttribute("smUname");
  	}

	session.invalidate();
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1);
	response.sendRedirect("login.jsp");

	%>
	
</body>
</html>