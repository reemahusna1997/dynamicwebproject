package org.dynamicwebproject.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dynamicwebproject.bean.JOB;
import org.dynamicwebproject.userdao.jobDAO;

@WebServlet("/SuccessServlet")
public class SuccessServlet  extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/*protected void insertjob(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String companyName = request.getParameter("CompanyName");
		String appointmentDay = request.getParameter("AppointmentDay");
		String consultPerson = request.getParameter("ConsultPerson");
		String requirements = request.getParameter("Requirements");
		String comments = request.getParameter("Comments");
		JOB newJOB = new JOB(CompanyName, AppointmentDay, ConsultPerson, Requirements, Comments);
		jobDAO.insertJOB(newJOB);
		response.sendRedirect("list");
}*/
	
	
	
	
	
	private void SuccessPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Success.jsp");
		dispatcher.forward(request, response);

	}

}

