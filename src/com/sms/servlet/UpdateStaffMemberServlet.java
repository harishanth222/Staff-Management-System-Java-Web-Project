package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.service.IStaffMember;
import com.sms.service.StaffMemberDBUtil;

/**
 * Servlet implementation class UpdateStaffMemberServlet
 */
@WebServlet("/UpdateStaffMemberServlet")
public class UpdateStaffMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStaffMemberServlet() {
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

		int id = Integer.parseInt(request.getParameter("smId"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String contactNo = request.getParameter("contactNo");
		String position = request.getParameter("position");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		IStaffMember iSM = new StaffMemberDBUtil();
		
		isTrue = iSM.updateStaffMember(id, firstName, lastName, email, contactNo, position, salary, username, password);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("staffMemberList.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	}

}
