<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Update Details</title>
</head>
<body>
	<%@page
		import="com.org.*,java.sql.*"%>

	<%
	Person p = Controller.getData(Integer.parseInt(request.getParameter("id")));
	%>

	<h1>Person Update Details</h1>
	<form action="process_update.jsp" method="post">
		<input type="hidden" name="id" value="<%=p.getPersonID()%>" />
		<table>



			<tr>
				<td>FirstName: </td>
				<td><input type="text" name="firstname"
					value="<%=p.getFirstname()%>" /></td>
			</tr>
			<tr>
				<td>LastName: </td>
				<td><input type="text" name="lastname"
					value="<%=p.getLastname()%>" /></td>
			</tr>

			<tr>
				<td>City: </td>
				<td><input type="text" name="city"
					value="<%=p.getCity()%>" /></td>
			</tr>

			<td colspan="2"><input type="submit" value="Update Data" /></td>
			</tr>
		</table>
		
		
	</form>
	<td colspan="2"><button type="button" name="back"
			onclick="history.back()">Back</button></td>


</body>
</html>