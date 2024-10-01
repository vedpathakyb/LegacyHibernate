<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Persons Page</title>
</head>

<body>
	<center>
		<h2>Persons data</h2>
	</center>


	<%@page import="com.org.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<h1>Persons List</h1>

	<%
	List<Person> list = Controller.getAllRecords();
		request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>City</th>
			<th>Delete</th>
			<th>Update</th>



		</tr>
		<c:forEach items="${list}" var="p">
			<tr>
				<td>${p.getPersonID()}</td>
				<td>${p.getFirstname()}</td>
				<td>${p.getLastname()}</td>

				<td>${p.getCity()}</td>
				<td><a
					href="<%=request.getContextPath()%>/process_delete.jsp?id=${p.getPersonID()}">Delete</a></td>
				<td><a
					href="<%=request.getContextPath()%>/update_form.jsp?id=${p.getPersonID()}">Update</a></td>


			</tr>
		</c:forEach>
	</table>
</body>
</html>