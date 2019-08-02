package org.dynamicwebproject.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dynamicwebproject.bean.JOB;
import org.dynamicwebproject.userdao.jobDAO;


@WebServlet("/InsertJobServlet")
public class InsertJobServlet extends HttpServlet {
	private jobDAO jobDAO;

	public void init() {
		jobDAO = new jobDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
insertjob(request, response);
	
}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	private void insertjob(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String CompanyName = request.getParameter("companyName");
		String AppointmentDay = request.getParameter("appointmentDay");
		String ConsultPerson = request.getParameter("consultPerson");
		String Requirements = request.getParameter("requirements");
		String Comments = request.getParameter("comments");
		System.out.println("CompanyName----"+CompanyName+"AppointmentDay----"+AppointmentDay+"ConsultPerson----"+ConsultPerson+"Requirements----"+Requirements+"Comments----"+Comments);	
		JOB newJOB = new JOB(CompanyName, AppointmentDay, ConsultPerson, Requirements, Comments);
	response.sendRedirect("SuccessServlet");

	}

}
