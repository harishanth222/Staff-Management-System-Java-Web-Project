package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ManagerSearchServlet
 */
@WebServlet("/ManagerSearchServlet")
public class ManagerSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String search = request.getParameter("search");
	
		if(search.equalsIgnoreCase("view profile")) {
			RequestDispatcher rd = request.getRequestDispatcher("managerViewProfile");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("edit profile")) {
			RequestDispatcher rd = request.getRequestDispatcher("managerEditProfile");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("staff member list")) {
			RequestDispatcher rd = request.getRequestDispatcher("staffMemberList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("add staff member")) {
			RequestDispatcher rd = request.getRequestDispatcher("addStaffMember.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("manager list")) {
			RequestDispatcher rd = request.getRequestDispatcher("managerList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("add manager")) {
			RequestDispatcher rd = request.getRequestDispatcher("addManager.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("payment list")) {
			RequestDispatcher rd = request.getRequestDispatcher("mgrPaymentList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("add payment")) {
			RequestDispatcher rd = request.getRequestDispatcher("addPayment.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("feedback list")) {
			RequestDispatcher rd = request.getRequestDispatcher("mgrFeedbackList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("leaves list")) {
			RequestDispatcher rd = request.getRequestDispatcher("mgrLeaveList.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("mgrDashboard.jsp");
			rd.forward(request, response);
		}
		
	}

}
