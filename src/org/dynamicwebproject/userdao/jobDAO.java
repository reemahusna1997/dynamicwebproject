package org.dynamicwebproject.userdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.dynamicwebproject.bean.JOB;

public class jobDAO {

	private String jdbcURL = "jdbc:mysql://localhost:3307/FeedbackDetails";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";

	private static final String INSERT_JOBS_SQL = "INSERT INTO Feedback"
			+ "(CompanyName,AppointmentDay,ConsultPerson,Requirements,Comments)VALUES" + "(?,?,?,?,?);";
	private static final String SELECT_ALL_JOBS = "SELECT * FROM Feedback";
	

	public jobDAO() {
	}

	protected Connection getConnection() {

		Connection conn = null;
		try {
			conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;

	}

	public void insertJOB(JOB JOB) throws SQLException {
		System.out.println(INSERT_JOBS_SQL);
		Connection connection = getConnection();
		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_JOBS_SQL);

		preparedStatement.setString(1, JOB.getCompanyName());
		preparedStatement.setString(2, JOB.getAppointmentDay());
		preparedStatement.setString(3, JOB.getConsultPerson());
		preparedStatement.setString(4, JOB.getRequirements());
		preparedStatement.setString(5, JOB.getComments());

		System.out.println(preparedStatement);
		preparedStatement.executeUpdate();

	}

	public List<JOB>selectAllJOBS() {
		List<JOB> JOBS = new ArrayList<JOB>();
		Connection conn = getConnection();

		PreparedStatement preparedStatement;
		try {
			preparedStatement = conn.prepareStatement(SELECT_ALL_JOBS);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id=rs.getInt("id");
				String CompanyName = rs.getString("companyName");
				String AppointmentDay = rs.getString("appointmentDay");
				String ConsultPerson = rs.getString("consultPerson");
				String Requirements = rs.getString("requirements");
				String Comments = rs.getString("comments");
				JOBS.add(new JOB(CompanyName, AppointmentDay, ConsultPerson, Requirements, Comments));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return JOBS;

	}
}
