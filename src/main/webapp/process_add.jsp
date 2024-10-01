
<%@page import="com.org.Controller"%>  
<%
  String req_id = request.getParameter("id");
  String First_Name = request.getParameter("First_Name");
  String Last_Name = request.getParameter("Last_Name");
  String city= request.getParameter("city");

  int id=Integer.parseInt(req_id);

  System.out.println(id);
  System.out.println(First_Name);
  System.out.println(Last_Name);
  System.out.println(city);




  int i=Controller.insertData(id,First_Name,Last_Name,city); 
  String paths=request.getContextPath();
  if (i>0){
  	response.sendRedirect(paths+"/update_success.jsp");
  }
  else{
  out.println("Data Not Updated!");
  }
  %>  
