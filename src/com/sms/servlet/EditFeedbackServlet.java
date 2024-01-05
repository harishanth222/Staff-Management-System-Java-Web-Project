package com.sms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.model.Feedback;
import com.sms.service.FeedbackDBUtil;
import com.sms.service.IFeedback;

/**
 * Servlet implementation class EditFeedbackServlet
 */
@WebServlet("/EditFeedbackServlet")
public class EditFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int feedbackId = Integer.parseInt(request.getParameter("fbkId"));
		
		IFeedback iFbk = new FeedbackDBUtil();
		
		Feedback feedback = iFbk.getFeedbackById(feedbackId);
		
        request.setAttribute("fbk", feedback);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/editFeedback.jsp");
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
