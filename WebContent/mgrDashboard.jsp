<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.sms.service.*,com.sms.util.*,java.util.*,java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>SuperStaff | Manager Dashboard</title>
  <link rel="icon" type="image/x-icon" href="images/logoFavicon.ico">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
	<link rel="stylesheet" href="css/dash.css">
	
  	<%
  		if(session.getAttribute("mgrUname") == null) {
  			response.sendRedirect("login.jsp");
  		}
  	%>

</head>
<body>

<div class="dashboard">
	<aside class="top-wrap">
		<img src="images/logo.png" class="logo">
		
		<div class="search">
			<label for="search">
				<form action="managerSearch" method="post">
		          <input name="search" type="text" list="toList" id="search" placeholder="Search">
		          <datalist id="toList">
		          	  <option value="view profile"></option>
		              <option value="edit profile"></option>
		              <option value="staff member list"></option>
		              <option value="add staff member"></option>
		              <option value="manager list"></option>
		              <option value="add manager"></option>
		              <option value="payment list"></option>
		              <option value="add payment"></option>
		              <option value="feedback list"></option>
		              <option value="leaves list"></option>
		          </datalist>
		          &nbsp&nbsp
		          <button type="submit" style="border: none; background: none;">
		          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M10 18a7.952 7.952 0 0 0 4.897-1.688l4.396 4.396 1.414-1.414-4.396-4.396A7.952 7.952 0 0 0 18 10c0-4.411-3.589-8-8-8s-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6z"/></svg> 
		          </button> 
        		</form>
			</label>
		</div>		
		
		<div class="user-actions">
			<button>
				<a href="logout.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 21c4.411 0 8-3.589 8-8 0-3.35-2.072-6.221-5-7.411v2.223A6 6 0 0 1 18 13c0 3.309-2.691 6-6 6s-6-2.691-6-6a5.999 5.999 0 0 1 3-5.188V5.589C6.072 6.779 4 9.65 4 13c0 4.411 3.589 8 8 8z"/><path d="M11 2h2v10h-2z"/></svg>
				</a>
			</button>
		</div>
	</aside>
	
	<header class="menu-wrap">
		<figure class="user">
			<div class="user-avatar">
				<img src="images/profile.png" alt="Manager">
			</div>
			<figcaption>
			  	<%
			  			out.print(session.getAttribute("mgrUname")); 		
			  	%>
			</figcaption>
		</figure>
	
		<nav>

			<section class="dicover">
				<h3><a href="index.jsp" id="home">Home</a></h3>
			</section>

			<section class="dicover">
				<h3>Profile</h3>

				<ul>
					<li>
						<a href="managerViewProfile">
							<svg width="24" height="24" viewBox="0 0 20 20"><path fill="none" d="M19.471,8.934L18.883,8.34c-2.096-2.14-4.707-4.804-8.903-4.804c-4.171,0-6.959,2.83-8.996,4.897L0.488,8.934c-0.307,0.307-0.307,0.803,0,1.109l0.401,0.403c2.052,2.072,4.862,4.909,9.091,4.909c4.25,0,6.88-2.666,8.988-4.807l0.503-0.506C19.778,9.737,19.778,9.241,19.471,8.934z M9.98,13.787c-3.493,0-5.804-2.254-7.833-4.3C4.182,7.424,6.493,5.105,9.98,5.105c3.536,0,5.792,2.301,7.784,4.332l0.049,0.051C15.818,11.511,13.551,13.787,9.98,13.787z"></path>
							<circle fill="none" cx="9.98" cy="9.446" r="1.629"></circle>
							</svg>
							View
						</a>
					</li>
					
					<li>
						<a href="managerEditProfile">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M10.032,8.367c-1.112,0-2.016,0.905-2.016,2.018c0,1.111,0.904,2.014,2.016,2.014c1.111,0,2.014-0.902,2.014-2.014C12.046,9.271,11.143,8.367,10.032,8.367z M10.032,11.336c-0.525,0-0.953-0.427-0.953-0.951c0-0.526,0.427-0.955,0.953-0.955c0.524,0,0.951,0.429,0.951,0.955C10.982,10.909,10.556,11.336,10.032,11.336z"></path>
								<path fill="none" d="M17.279,8.257h-0.785c-0.107-0.322-0.237-0.635-0.391-0.938l0.555-0.556c0.208-0.208,0.208-0.544,0-0.751l-2.254-2.257c-0.199-0.2-0.552-0.2-0.752,0l-0.556,0.557c-0.304-0.153-0.617-0.284-0.939-0.392V3.135c0-0.294-0.236-0.532-0.531-0.532H8.435c-0.293,0-0.531,0.237-0.531,0.532v0.784C7.582,4.027,7.269,4.158,6.966,4.311L6.409,3.754c-0.1-0.1-0.234-0.155-0.376-0.155c-0.141,0-0.275,0.055-0.375,0.155L3.403,6.011c-0.208,0.207-0.208,0.543,0,0.751l0.556,0.556C3.804,7.622,3.673,7.935,3.567,8.257H2.782c-0.294,0-0.531,0.238-0.531,0.531v3.19c0,0.295,0.237,0.531,0.531,0.531h0.787c0.105,0.318,0.236,0.631,0.391,0.938l-0.556,0.559c-0.208,0.207-0.208,0.545,0,0.752l2.254,2.254c0.208,0.207,0.544,0.207,0.751,0l0.558-0.559c0.303,0.154,0.616,0.285,0.938,0.391v0.787c0,0.293,0.238,0.531,0.531,0.531h3.191c0.295,0,0.531-0.238,0.531-0.531v-0.787c0.322-0.105,0.636-0.236,0.938-0.391l0.56,0.559c0.208,0.205,0.546,0.207,0.752,0l2.252-2.254c0.208-0.207,0.208-0.545,0.002-0.752l-0.559-0.559c0.153-0.303,0.285-0.615,0.389-0.938h0.789c0.295,0,0.532-0.236,0.532-0.531v-3.19C17.812,8.495,17.574,8.257,17.279,8.257z M16.747,11.447h-0.653c-0.241,0-0.453,0.164-0.514,0.398c-0.129,0.496-0.329,0.977-0.594,1.426c-0.121,0.209-0.089,0.473,0.083,0.645l0.463,0.465l-1.502,1.504l-0.465-0.463c-0.174-0.174-0.438-0.207-0.646-0.082c-0.447,0.262-0.927,0.463-1.427,0.594c-0.234,0.061-0.397,0.271-0.397,0.514V17.1H8.967v-0.652c0-0.242-0.164-0.453-0.397-0.514c-0.5-0.131-0.98-0.332-1.428-0.594c-0.207-0.123-0.472-0.09-0.646,0.082l-0.463,0.463L4.53,14.381l0.461-0.463c0.169-0.172,0.204-0.434,0.083-0.643c-0.266-0.461-0.467-0.939-0.596-1.43c-0.06-0.234-0.272-0.398-0.514-0.398H3.313V9.319h0.652c0.241,0,0.454-0.162,0.514-0.397c0.131-0.498,0.33-0.979,0.595-1.43c0.122-0.208,0.088-0.473-0.083-0.645L4.53,6.386l1.503-1.504l0.46,0.462c0.173,0.172,0.437,0.204,0.646,0.083c0.45-0.265,0.931-0.464,1.433-0.597c0.233-0.062,0.396-0.274,0.396-0.514V3.667h2.128v0.649c0,0.24,0.161,0.452,0.396,0.514c0.502,0.133,0.982,0.333,1.433,0.597c0.211,0.12,0.475,0.089,0.646-0.083l0.459-0.462l1.504,1.504l-0.463,0.463c-0.17,0.171-0.202,0.438-0.081,0.646c0.263,0.448,0.463,0.928,0.594,1.427c0.061,0.235,0.272,0.397,0.514,0.397h0.651V11.447z"></path>
							</svg>
							Edit
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Staff Member</h3>

				<ul>
					<li>
						<a href="staffMemberList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>
							List
						</a>
					</li>
					
					<li>
						<a href="addStaffMember.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20"><path fill="none" d="M13.68,9.448h-3.128V6.319c0-0.304-0.248-0.551-0.552-0.551S9.448,6.015,9.448,6.319v3.129H6.319
								c-0.304,0-0.551,0.247-0.551,0.551s0.247,0.551,0.551,0.551h3.129v3.129c0,0.305,0.248,0.551,0.552,0.551s0.552-0.246,0.552-0.551
								v-3.129h3.128c0.305,0,0.552-0.247,0.552-0.551S13.984,9.448,13.68,9.448z M10,0.968c-4.987,0-9.031,4.043-9.031,9.031
								c0,4.989,4.044,9.032,9.031,9.032c4.988,0,9.031-4.043,9.031-9.032C19.031,5.012,14.988,0.968,10,0.968z M10,17.902
								c-4.364,0-7.902-3.539-7.902-7.903c0-4.365,3.538-7.902,7.902-7.902S17.902,5.635,17.902,10C17.902,14.363,14.364,17.902,10,17.902
								z"></path>
							</svg>
							Add
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Manager</h3>

				<ul>
					<li>
						<a href="managerList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>							
							List
						</a>
					</li>
					
					<li>
						<a href="addManager.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20"><path fill="none" d="M13.68,9.448h-3.128V6.319c0-0.304-0.248-0.551-0.552-0.551S9.448,6.015,9.448,6.319v3.129H6.319
								c-0.304,0-0.551,0.247-0.551,0.551s0.247,0.551,0.551,0.551h3.129v3.129c0,0.305,0.248,0.551,0.552,0.551s0.552-0.246,0.552-0.551
								v-3.129h3.128c0.305,0,0.552-0.247,0.552-0.551S13.984,9.448,13.68,9.448z M10,0.968c-4.987,0-9.031,4.043-9.031,9.031
								c0,4.989,4.044,9.032,9.031,9.032c4.988,0,9.031-4.043,9.031-9.032C19.031,5.012,14.988,0.968,10,0.968z M10,17.902
								c-4.364,0-7.902-3.539-7.902-7.903c0-4.365,3.538-7.902,7.902-7.902S17.902,5.635,17.902,10C17.902,14.363,14.364,17.902,10,17.902
								z"></path>
							</svg>						
							Add
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Payment</h3>

				<ul>
					<li>
						<a href="mgrPaymentList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>						
							List
						</a>
					</li>
					
					<li>
						<a href="addPayment.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20"><path fill="none" d="M13.68,9.448h-3.128V6.319c0-0.304-0.248-0.551-0.552-0.551S9.448,6.015,9.448,6.319v3.129H6.319
								c-0.304,0-0.551,0.247-0.551,0.551s0.247,0.551,0.551,0.551h3.129v3.129c0,0.305,0.248,0.551,0.552,0.551s0.552-0.246,0.552-0.551
								v-3.129h3.128c0.305,0,0.552-0.247,0.552-0.551S13.984,9.448,13.68,9.448z M10,0.968c-4.987,0-9.031,4.043-9.031,9.031
								c0,4.989,4.044,9.032,9.031,9.032c4.988,0,9.031-4.043,9.031-9.032C19.031,5.012,14.988,0.968,10,0.968z M10,17.902
								c-4.364,0-7.902-3.539-7.902-7.903c0-4.365,3.538-7.902,7.902-7.902S17.902,5.635,17.902,10C17.902,14.363,14.364,17.902,10,17.902
								z"></path>
							</svg>						
							Add
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Feedback</h3>

				<ul>
					<li>
						<a href="mgrFeedbackList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>	
							List
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Leaves</h3>

				<ul>
					<li>
						<a href="mgrLeaveList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>						
							List
						</a>
					</li>

				</ul>
			</section>

			<section class="dicover">
				<h3>Contact</h3>

				<ul>
					<li>
						<a href="contactList.jsp">
							<svg width="24" height="24" viewBox="0 0 20 20">
								<path fill="none" d="M3.314,4.8h13.372c0.41,0,0.743-0.333,0.743-0.743c0-0.41-0.333-0.743-0.743-0.743H3.314
									c-0.41,0-0.743,0.333-0.743,0.743C2.571,4.467,2.904,4.8,3.314,4.8z M16.686,15.2H3.314c-0.41,0-0.743,0.333-0.743,0.743
									s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,15.2,16.686,15.2z M16.686,9.257H3.314
									c-0.41,0-0.743,0.333-0.743,0.743s0.333,0.743,0.743,0.743h13.372c0.41,0,0.743-0.333,0.743-0.743S17.096,9.257,16.686,9.257z"></path>
							</svg>						
							List
						</a>
					</li>

				</ul>
			</section>

		</nav>
	</header>
	
	<main class="content-wrap">
		<header class="content-head">
			<h1>Insights</h1>
		</header>
		
		<div class="content">
			<section class="info-boxes">
				<div class="info-box">
					<div class="box-icon">
						<img src="images/sm.png" width="90" height="80">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getStaffMemberCount()%></span>
						Staff Members
					</div>
				</div>
				
				<div class="info-box">
					<div class="box-icon">
						<img src="images/mgr.png" width="100" height="100">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getManagerCount()%></span>
						Managers
					</div>
				</div>
				
				<div class="info-box active">
					<div class="box-icon">
						<img src="images/pay.png" width="120" height="100">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getPaymentCount()%></span>
						Payments
					</div>
				</div>
				
				<div class="info-box">
					<div class="box-icon">
						<img src="images/fbk.png" width="90" height="70">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getFeedbackCount()%></span>
						Staff member feedbacks
					</div>
				</div>

				<div class="info-box">
					<div class="box-icon">
						<img src="images/leave.png" width="100" height="80">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getLeaveCount()%></span>
						Leaves requested
					</div>
				</div>

				<div class="info-box">
					<div class="box-icon">
						<img src="images/leave.png" width="100" height="80">
					</div>
					
					<div class="box-content">
						<span class="big"><%=ManagerDashboardDBUtil.getApprovedLeaveCount()%></span>
						Leaves approved
					</div>
				</div>
				
			</section>
		</div>


	</main>
</div>
  
</body>
</html>
