
<%@page import="com.org.Controller"%>
<%
String req_id = request.getParameter("id");

int id = Integer.parseInt(req_id);

System.out.println(id);

boolean i = Controller.deleteData(id);
String paths = request.getContextPath();
if (i == true) {
	response.sendRedirect(paths + "/update_success.jsp");
} else {
	out.println("Data Not Updated!");
}
%>
