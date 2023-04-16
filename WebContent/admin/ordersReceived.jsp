<%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Orders Received <i class="fas fa-archive"></i></div>
<%
String  msg = request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancel Successfully!</h3>
<%} %>
<%

if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%} %>
<%

if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<table id="customers">
          <tr>
          
            <th scope="col">Product id</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            
              
              <th scope="col">Order Delivered <i class='fas fa-dolly'></i></i></th>
          </tr>
        <%
       
        try{
        	Connection con = ConnectionProvider.getCon();
        	Statement st = con.createStatement();
        	ResultSet rs = st.executeQuery("select *from cart inner join product where cart.product_id=product.id ");
        	while (rs.next()){
        
        
        %>
        
       
          <tr>
          
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5) %> </td>
                
               
               
                <td><a href="deliveredOrders.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered </a></td>
            </tr><% }}
         catch(Exception e){}%>
        </table>
      <br>
      <br>
      <br>

</body>
</html>