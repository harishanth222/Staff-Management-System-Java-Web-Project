package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.model.StaffMember;
import com.sms.service.IStaffMember;
import com.sms.service.StaffMemberDBUtil;

/**
 * Servlet implementation class EditStaffMemberServlet
 */
@WebServlet("/EditStaffMemberServlet")
public class EditStaffMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditStaffMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int staffMemberId = Integer.parseInt(request.getParameter("smId"));
		
		IStaffMember iSM = new StaffMemberDBUtil();
		
		StaffMember staffMember = iSM.getStaffMemberById(staffMemberId);
		
        request.setAttribute("sm", staffMember);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/editStaffMember.jsp");
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
