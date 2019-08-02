package org.dynamicwebproject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dynamicwebproject.bean.JOB;
import org.dynamicwebproject.userdao.jobDAO;

@WebServlet("/RetrieveJobServlet")

public class RetrieveJobServlet extends HttpServlet {
	private jobDAO jobDAO;

	public void init() {
		jobDAO = new jobDAO();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			listJOB(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	private void listJOB(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<JOB> listjob = jobDAO.selectAllJOBS();
		request.setAttribute("listjob", listjob);
		RequestDispatcher dispatcher = request.getRequestDispatcher("joblist.jsp");
		dispatcher.forward(request, response);

	}

}