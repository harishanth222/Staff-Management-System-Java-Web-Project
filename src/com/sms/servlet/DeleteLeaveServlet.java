package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.service.ILeave;
import com.sms.service.LeaveDBUtil;

/**
 * Servlet implementation class DeleteLeaveServlet
 */
@WebServlet("/DeleteLeaveServlet")
public class DeleteLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteLeaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int leaveId = Integer.parseInt(request.getParameter("lvId"));
		
		boolean isTrue;
		
		ILeave iLv = new LeaveDBUtil();
		
		isTrue = iLv.deleteLeave(leaveId);
		
		if(isTrue == true) {
			
			HttpSession session = request.getSession(false);
			
			String staffMemberUsername = (String) session.getAttribute("smUname");
			String managerUsername = (String) session.getAttribute("mgrUname");
			
			if(staffMemberUsername != null) {
				RequestDispatcher rd = request.getRequestDispatcher("smLeaveList.jsp");
				rd.forward(request, response);
			}
			else if(managerUsername != null) {
				RequestDispatcher rd = request.getRequestDispatcher("mgrLeaveList.jsp");
				rd.forward(request, response);				
			}
			

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
