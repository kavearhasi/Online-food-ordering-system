
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="css/forgotpass.css">
</head>
<body>
<form action="forgotpassaction.jsp" method="post">
<div class="row">
		<h1>Forgot Password</h1>
		<h6 class="information-text">Enter your registered email to reset your password.</h6>
		<div class="form-group">
			<input type="email" name="email" id="user_email" required>
			<p><label for="username">Email</label></p>
			<input type="password" name="newpassword" id="user_email" required>
			<p><label for="username">New Password</label></p>
			<button onclick="showSpinner()">Reset Password</button>
		</div>
		<div class="footer">
			<h5>New here? <a href="signup.jsp">Sign Up.</a></h5>
			<h5>Already have an account? <a href="login.jsp">Sign In.</a></h5>
			
		</div>
	</div>
	</form>
	<%
            String msg = request.getParameter("msg");
             if("done".equals(msg))
             {
            %>
            <h1 style="color:green;">Password Changed Successfully  !!</h1><%} %>
            <%
            
             if("invalid".equals(msg))
             {
            %>
            <h1 style="color :red;">Sorry Something Went Wrong!</h1><%} %>
	
</body>
</html>