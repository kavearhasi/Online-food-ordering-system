<!DOCTYPE html> 

  <html lang="en"> 

    <head>  

      <meta charset="UTF-8">  

      <meta name="viewport" content="width=device-width, initial-scale=1.0">                
      <title>Sign Up</title>  
      <link rel="stylesheet" href="css/signup.css">  
      <meta name="viewport" content="width=device-width, initial-scale=1"> 
    </head>

    <body> 

        <div>   

          <form action="signupaction.jsp" method="get">    

            <h4 class="text-warning text-center pt-5">Registration Page</h4>  
              <label>     

              <input type="text" class="input" name="username" placeholder="USERNAME"/>

                    <div class="line-box">         

                <div class="line"></div>        

              </div>    

            </label>     

            
            <label>     

              <input type="text" class="input" name="email" placeholder="EMAIL"/>                   
              <div class="line-box">          

              <div class="line"></div>        

              </div>    

            </label>     

            

          

            

            <label>     

              <input 

                     type="password" 

                     class="input" 

                     name="password" 

                     placeholder="PASSWORD"/>        

              <div class="line-box">          

                <div class="line"></div>        

              </div>    

           </label>     

            

            

            

            <button type="submit">submit</button> 
           <p>Already a member? <a href="login.jsp">Log in</a></p>

          </form> 
            <div>
            <%
            String msg = request.getParameter("msg");
             if("valid".equals(msg))
             {
            %>
            <h1 style="color:green;">Successfully Registered !!</h1><%} %>
            <%
            
             if("invalid".equals(msg))
             {
            %>
            <h1 style="color :red;">Sorry Registration failed</h1><%} %>
             
            
            
            
            </div>  

      </div> 

    </body> 

</html>