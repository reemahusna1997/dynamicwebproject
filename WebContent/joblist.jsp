<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http//java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Management Application</title>

</head>
<body>
	<center>
		<h1>Job Management</h1>
		<h2>
			<a href="new">Add New Job</a> &nbsp;&nbsp;&nbsp; <a href="list">List All Jobs</a>
		</h2>
	</center>
	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>List of Jobs</h2>
			</caption>
			<tr>
				<th>CompanyName</th>
				<th>AppointmentDay</th>
				<th>ConsultPerson</th>
				<th>Requirements</th>
				<th>Comments</th>
			</tr>
			<c:forEach var="JOB" items="${listJOB}">
				<tr>
					<td>${JOB.companyName}</td>
					<td>${JOB.appointmentDay}</td>
					<td>${JOB.consultPerson}</td>
					<td>${JOB.requirements}</td>
					<td>${JOB.comments}</td>
					</tr>
			
			</c:forEach>
		</table>
	</div>
</body>
</html>