<%@page import="com.org.Controller"%>
<%
String req_id = request.getParameter("id");

String f_name = request.getParameter("firstname");
String l_name = request.getParameter("lastname");
String city = request.getParameter("city");

System.out.println(f_name);
System.out.println(l_name);
System.out.println(city);


int id = Integer.parseInt(req_id);

System.out.println("Updated data"+": "+id+" "+f_name+" "+l_name+" "+city);


boolean i = Controller.updateData(id, f_name, l_name, city);
String paths = request.getContextPath();
if (i == true) {
	response.sendRedirect(paths + "/update_success.jsp");
} else {
	out.println("Data Not Updated!");
}
%>