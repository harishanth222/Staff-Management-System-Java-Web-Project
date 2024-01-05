package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.model.Manager;
import com.sms.service.IManager;
import com.sms.service.ManagerDBUtil;


/**
 * Servlet implementation class ViewManagerServlet
 */
@WebServlet("/ViewManagerServlet")
public class ViewManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int managerId = Integer.parseInt(request.getParameter("mgrId"));
		
		IManager iMgr = new ManagerDBUtil();
		
		Manager manager = iMgr.getManagerById(managerId);
		
        request.setAttribute("mgr", manager);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/viewManager.jsp");
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
