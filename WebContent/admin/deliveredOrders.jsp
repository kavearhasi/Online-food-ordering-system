<%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
String id= request.getParameter("id");
String email= request.getParameter("email");
String status = "delivered";
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	
	response.sendRedirect("ordersReceived.jsp?msg=delivered");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>