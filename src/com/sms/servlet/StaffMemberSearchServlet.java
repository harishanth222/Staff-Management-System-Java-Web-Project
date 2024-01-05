package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StaffMemberSearchServelet
 */
@WebServlet("/StaffMemberSearchServlet")
public class StaffMemberSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffMemberSearchServlet() {
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
			RequestDispatcher rd = request.getRequestDispatcher("staffMemberViewProfile");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("edit profile")) {
			RequestDispatcher rd = request.getRequestDispatcher("staffMemberEditProfile");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("wages list")) {
			RequestDispatcher rd = request.getRequestDispatcher("smPaymentList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("feedback list")) {
			RequestDispatcher rd = request.getRequestDispatcher("smFeedbackList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("add feedback")) {
			RequestDispatcher rd = request.getRequestDispatcher("addFeedback.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("leaves list")) {
			RequestDispatcher rd = request.getRequestDispatcher("smLeaveList.jsp");
			rd.forward(request, response);
		}
		else if(search.equalsIgnoreCase("add leave")) {
			RequestDispatcher rd = request.getRequestDispatcher("addLeave.jsp");
			rd.forward(request, response);
		}

	}

}
