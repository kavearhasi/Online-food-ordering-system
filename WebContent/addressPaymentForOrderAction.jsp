<%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String mobilenumber = request.getParameter("mobilenumber");
String address = request.getParameter("address");
String city = request.getParameter("city");
String street = request.getParameter("street");

String status ="bill";
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update user set mobilenumber=?, address =?,city=?,street=? where email=?");
	ps.setString(1,"mobilenumber");
	ps.setString(2,"address");
	ps.setString(3,"city");
	ps.setString(4,"street");
	ps.executeUpdate();
	
	PreparedStatement ps1 = con.prepareStatement("update cart set address=?,city=?,state=?,orderDate=now(),deliveryDate=DATE_ADD(orderDate,INTERVAL 7 DAY,status=? where email=? and address is NULL)");
	ps1.setString(1,address);
	ps1.setString(2,city);
	ps1.setString(3,street);
	ps1.setString(4,mobilenumber);
	ps1.setString(5,status);
	ps1.setString(6,email);
	ps1.executeUpdate();
	response.sendRedirect("bill.jsp");
	
	
	
}
catch(Exception e){
	System.out.println(e);
}

%>