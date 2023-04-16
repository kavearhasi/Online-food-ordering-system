<%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
String username =request.getParameter("username");
String email =request.getParameter("email");
String password =request.getParameter("password");
String mobilenumber ="0";
String address ="";
String city ="";
String street ="";
try{
	Connection con =ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
	ps.setString(1,username);
	ps.setString(2,email);
	ps.setString(3,password);
	ps.setString(4,mobilenumber);
	ps.setString(5,address);
	ps.setString(6,city);
	ps.setString(7,street);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}
catch(Exception e){
	
System.out.print(e);
response.sendRedirect("signup.jsp?msg=invalid");

}
%>