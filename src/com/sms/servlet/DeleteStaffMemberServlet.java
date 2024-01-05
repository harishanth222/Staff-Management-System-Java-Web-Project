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
 * Servlet implementation class DeleteStaffMemberServlet
 */
@WebServlet("/DeleteStaffMemberServlet")
public class DeleteStaffMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStaffMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int staffMemberId = Integer.parseInt(request.getParameter("smId"));
		
		boolean isTrue;
		
		IStaffMember iSM = new StaffMemberDBUtil();
		
		isTrue = iSM.deleteStaffMember(staffMemberId);
		
		if(isTrue == true) {
			RequestDispatcher rd = request.getRequestDispatcher("staffMemberList.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
