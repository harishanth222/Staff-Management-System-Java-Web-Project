package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.service.FeedbackDBUtil;
import com.sms.service.IFeedback;

/**
 * Servlet implementation class DeleteFeedbackServlet
 */
@WebServlet("/DeleteFeedbackServlet")
public class DeleteFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int feedbackId = Integer.parseInt(request.getParameter("fbkId"));
		
		boolean isTrue;
		
		IFeedback iFbk = new FeedbackDBUtil();
		
		isTrue = iFbk.deleteFeedback(feedbackId);
		
		if(isTrue == true) {
			
			HttpSession session = request.getSession(false);
			
			String staffMemberUsername = (String) session.getAttribute("smUname");
			String managerUsername = (String) session.getAttribute("mgrUname");
			
			if(staffMemberUsername != null) {
				RequestDispatcher rd = request.getRequestDispatcher("smFeedbackList.jsp");
				rd.forward(request, response);
			}
			else if(managerUsername != null) {
				RequestDispatcher rd = request.getRequestDispatcher("mgrFeedbackList.jsp");
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
