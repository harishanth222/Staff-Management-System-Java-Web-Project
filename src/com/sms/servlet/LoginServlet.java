package com.sms.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.model.StaffMember;
import com.sms.service.StaffMemberDBUtil;

import com.sms.model.Manager;
import com.sms.service.IManager;
import com.sms.service.IStaffMember;
import com.sms.service.ManagerDBUtil;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		String staffMember = null;
		String manager = null;
		boolean isTrue = false;
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		staffMember = request.getParameter("staffMember");
		manager = request.getParameter("manager");
		
		HttpSession session = request.getSession(true);
		
		
		
		if(staffMember != null)
		{
			IStaffMember iSM = new StaffMemberDBUtil();
			
			isTrue = iSM.validate(username, password);
			
			if (isTrue == true) {
				ArrayList<StaffMember> smDetails = iSM.getStaffMember(username);
				request.setAttribute("smDetails", smDetails);
				
				session.setAttribute("smUname", username);
				
				RequestDispatcher rd = request.getRequestDispatcher("smDashboard.jsp");
				rd.forward(request, response);
				
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("errorLogin.jsp");
				rd.forward(request, response);
			}
		}
		else if(manager != null)
		{
			IManager iMgr = new ManagerDBUtil();
			
			isTrue = iMgr.validate(username, password);
			
			if (isTrue == true) {

				ArrayList<Manager> mgrDetails = iMgr.getManager(username);
				request.setAttribute("mgrDetails", mgrDetails);
				
				session.setAttribute("mgrUname", username);
				
				RequestDispatcher rd = request.getRequestDispatcher("mgrDashboard.jsp");
				rd.forward(request, response);
				
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("errorLogin.jsp");
				rd.forward(request, response);
			}
		} 
		
	}
}
