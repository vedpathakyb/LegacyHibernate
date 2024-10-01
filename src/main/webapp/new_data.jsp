<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Person Form</title>
</head>
<body>
	<%@page import="com.org.*"%>

	<%
	 Person u=new Person();
	%>

	<h1>Add New Person Form</h1>
	<form action="process_add.jsp" method="post">
		<table>
			
			<tr>
				<td>ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>
			
			<tr>
				<td>FirstName:</td>
				<td><input type="text" name="First_Name"  /></td>
			</tr>
			<tr>
				<td>LastName:</td>
				<td><input type="text" name="Last_Name"  /></td>
			</tr>
			
			<tr>
				<td>City:</td>
				<td><input type="text" name="city"  /></td>
			</tr>
                <td colspan="2"><input type="submit" value="Update Data" /></td>
			</tr>
		</table>
	</form>
		<td colspan="2"><button type="button" name="back"
			onclick="history.back()">Back</button></td>
	
	

</body>
</html>
