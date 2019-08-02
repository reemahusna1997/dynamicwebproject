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

@WebServlet("/jobservlet")
public class jobservlet extends HttpServlet {
	private jobDAO jobDAO;

	public void init() {
		jobDAO = new jobDAO();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		insertJOB(request, response);
	}

	private void insertJOB(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String companyName = request.getParameter("companyName");
		String appointmentDay = request.getParameter("appointmentDay");
		String consultPerson = request.getParameter("consultPerson");
		String requirements = request.getParameter("requirements");
		String comments = request.getParameter("comments");
		JOB newJOB = new JOB(companyName, appointmentDay, consultPerson, requirements, comments);
		try {
			jobDAO.insertJOB(newJOB);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("list");
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("form.jsp");
		dispatcher.forward(request, response);

	}
}