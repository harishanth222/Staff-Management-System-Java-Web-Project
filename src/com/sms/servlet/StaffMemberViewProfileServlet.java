package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.model.StaffMember;
import com.sms.service.IStaffMember;
import com.sms.service.StaffMemberDBUtil;

/**
 * Servlet implementation class StaffMemberViewProfileServlet
 */
@WebServlet("/StaffMemberViewProfileServlet")
public class StaffMemberViewProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffMemberViewProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		
		String staffMemberUsername = (String) session.getAttribute("smUname");
		
		IStaffMember iSM = new StaffMemberDBUtil();
		
		StaffMember staffMember = iSM.getStaffMember(staffMemberUsername).get(0);
		
        request.setAttribute("sm", staffMember);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/smViewProfile.jsp");
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
