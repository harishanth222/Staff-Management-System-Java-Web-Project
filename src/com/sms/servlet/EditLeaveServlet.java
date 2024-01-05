package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.model.Leave;
import com.sms.service.ILeave;
import com.sms.service.LeaveDBUtil;

/**
 * Servlet implementation class EditLeaveServlet
 */
@WebServlet("/EditLeaveServlet")
public class EditLeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditLeaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int leaveId = Integer.parseInt(request.getParameter("lvId"));
		
		ILeave iLv = new LeaveDBUtil();
		
		Leave leave = iLv.getLeaveById(leaveId);
		
        request.setAttribute("lv", leave);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/editLeave.jsp");
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
