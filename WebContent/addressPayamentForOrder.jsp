<%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" type="text/css" href="css/addressPaymentForOrder.css" >
<script type="text/javascript">
$('form').card({
    container: '.card-wrapper',
    width: 280,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});

if(window.history.forwart(1)!=null)
	window.history.forward(1);

</script>
</head>
<body>
<div class="body-text"></div>
  <form>
    <table class="Tables">
<thead>
<%
String email = session.getAttribute("email").toString();
int total=0;
int sno=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	
	ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next()){
		total =rs1.getInt(1);
	
	
	

%>
          <tr>
          <th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></th>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        
         <%
        
      ResultSet rs = st.executeQuery("select *from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
      while(rs.next()){
      %>
        
          <tr>
           <%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4) %></td>
            <td><%=rs.getString(8) %> </td>
            <td><i class="fa fa-inr"></i><%=rs.getString(10)%> </td>
            </tr>
        <%} 
        ResultSet rs2 = st.executeQuery("select *from user where email='"+email+"'");
        while(rs2.next())
        {
        %> 
        </tbody>
      </table>
     <form action="" method="post">
    <div class="form-container">
      <div class="personal-information">
        <h1>CheckOut InFormation</h1>
      </div> <!-- end of personal-information -->
           
        
          <div class="card-wrapper"></div>
      
          <input id="input-field" type="text" name="address" value="<%=rs2.getString(5)%>"required="required" autocomplete="on" maxlength="45" placeholder="Streed Address"/>
          <input id="column-left" type="text" name="city" value="<%=rs2.getString(6)%>" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
          <input id="column-right" type="text" name="street" value="<%=rs2.getString(7)%>" required="required" autocomplete="on" maxlength="20" placeholder="state"/>
        
          <input id="input-field" type="tel" name="mobilenumber" value="<%=rs2.getString(4)%>" required="required" autocomplete="on" maxlength="20" placeholder="Mobile Number"/>
          <button id="input-button" type="submit"><a href="bill.jsp">Place your order</a></button>
        
    
  </div>
  </form>
<%
}     
	}
}

catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>