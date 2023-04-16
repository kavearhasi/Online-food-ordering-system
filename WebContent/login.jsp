<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title> Login </title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="css/login.css">

</head>
<body>





             
            
  
<form class="login-form" action="loginaction.jsp" method= "post">
<div class="login-page"  >
  <div class="form">
    
    
      <input type="email" name="email" placeholder="E-Mail"/>
      <input type="password" name="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="signup.jsp">Create an account</a></p>
      <p class="message"> <a href="forgotpass.jsp">Forgot Password</a></p>
    
  </div>
</div>

</form>

<%
String msg = request.getParameter("msg");
if("notexit".equals(msg))
{
	%>
	<h1>Incorrect Username or Password</h1>
	
<%} %>

<%
if("invalid".equals(msg))
{%>
<h1>Some thing went wrong</h1>
<% }%>
 
</body>

</html>