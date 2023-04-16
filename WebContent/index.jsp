 <%@page import = "pkg.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

 
 <html>
<head>
<title>Home Cooking</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
</head>
<body> 

<div class="main">

<!----- Start Header ------>
<div class="header">


	<div class="header-left"><img src="images/logo.png" width="300" height="150" alt="Logo"></div>
    <div class="header-right">
    	<ul>
        	<li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            
            <li><a href="#menucard">Menu Card</a></li>
            <li><a href="myCart.jsp"> Cart</a></li>
            
            <li><a href="#contactus">Contact</a></li>
            <li><a href="logout.jsp"> Log Out</a></li>
        </ul>
    </div>
    
    <div class="header-bottom" id="home">
    	<div class="header-font">Eat healthy food &amp; Enjoy your life.</div>
        
       
    </div>
    
</div>
<!----- End Header ------>

<!----- Start Content ------>
<div class="content-part-1" id = "about">
	<div class="content-part-1-left">
    	<div class="content-part-1-left-h3">About us</div>
        <div class="content-part-1-left-p">
        <p>As the food ordering and delivering food giants, they are now growing more digitally by launching various platforms and increasing their services because of the conditions like “ when you don’t want to go out to the restaurant, then they bring the restaurant to you.</p>
        </div>
<%
String msg = request.getParameter("msg");
if("added".equals(msg))
{
%>
<div style=" background: linear-gradient(to right, #74F2CE,#7CFFCB);
  padding: 3px; " class="module-border-wrap">
<div style=" background: #d8ffeb;color: #ff8c8e; padding:1rem; ">
Product Added Successfully in the cart.
</div></div>
<%} %>
<%  
if("exist".equals(msg))
{
%>
<div style=" background: linear-gradient(to right, #FE5858,#EE9617);
  padding: 3px; " class="module-border-wrap">
<div style=" background: #ffecd9;color: red; padding:1rem; ">
Product already exist in you cart!Quantity increased.
</div></div>
<%} %>

<%  
if("invalid".equals(msg))
{
%>
<div style=" background: linear-gradient(to right, #FE0944,#FEAE96);
  padding: 3px; " class="module-border-wrap">
<div style=" background: #ffd9d9;color: #222; padding:1rem; ">
Something went Wrong
</div></div>
<%} %>



    </div>
    <div class="content-part-1-right" align="center">
    	<img src="images/content-part-1.jpg" width="673" height="434" alt="Restaurant">
    </div>
</div>

<div>



</div>

<div class="content-part-3" id = "menucard">
	<div class="content-part-3-left"><img src="images/menu/1.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Plain Dosa</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>55.00/-</i></div>
        Crispy plain dosa cooked to perfection served along with chutney and  sambhar.
        <div class="margin_p3"><a href="addtocartaction.jsp?id=1 "class="order-now">Order Now</a></div>
    </div>
    <div class="content-part-3-left"><img src="images/menu/2.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Idly</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>30.00/-</i></div>
       2 pcs|Super soft  idli dunked in flavorsome sambhar , served with chutney.
        <div class="margin_p3"><a href="addtocartaction.jsp?id=2" class="order-now">Order Now</a></div>
    </div>
            
    <div class="content-part-3-left"><img src="images/menu/3.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Veg Full Meals</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>220.00/-</i></div>
       Payasam + rice + sambar + rasam + kootu + poriyal + puli kulambu + curd + appalam 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=3" class="order-now">Order Now</a></div>
    </div>
    <div class="content-part-3-left"><img src="images/menu/4.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Fruit Salad</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>90.00/-</i></div>
        Nutrient rich salad comes with variety of fruits   
        <div class="margin_p3"><a href="addtocartaction.jsp?id=4" class="order-now">Order Now</a></div>
    </div>
            
    <div class="content-part-3-left"><img src="images/menu/5.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Chappathi</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>25.00/-</i></div>
       A spicy in a  gravy with chicken pieces served along with chappathi 3pcs 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=5" class="order-now">Order Now</a></div>
    </div>
    <div class="content-part-3-left"><img src="images/menu/6.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Grilled Chicken</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>300.00/-</i></div>
        juicy chicken seasoned with freshly ground spices and grilled to perfection 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=6" class="order-now">Order Now</a></div>
    </div>
            
    <div class="content-part-3-left"><img src="images/menu/7.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Prawn Fry</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>270.00/-</i></div>
        Medium sized prawn cooked in smokey charcoal pot with butter. 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=7" class="order-now">Order Now</a></div>
    </div>
    <div class="content-part-3-left"><img src="images/menu/8.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Pudding</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>325.00/-</i></div>
        Tasty Pudding . 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=8" class="order-now">Order Now</a></div>
    </div>
            
    <div class="content-part-3-left"><img src="images/menu/9.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Leg Piece</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>455.00/-</i></div>
       Packed with alumium foil and comes with mayonise & salad
 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=9" class="order-now">Order Now</a></div>
    </div>
    <div class="content-part-3-left"><img src="images/menu/10.jpg" width="230" height="155"></div>
    <div class="content-part-3-right">
        <div class="content-part-3-right-h4">Vanjaram Tawa Fish fry</div>
        <div class="price">Price : <i class="green"><span class="fa fa-inr"></span>180.00/-</i></div>
        Juicy Vanjaram Fish. 
        <div class="margin_p3"><a href="addtocartaction.jsp?id=10" class="order-now">Order Now</a></div>
    </div>
            
    
    </div>
</div>
<!----- End Content ------>

<!------ Start Footer ------>
<div class="footer" id="contactus">
	<div class="footer-parts">
    	<div class="footer-parts-h3">About Restaurant</div>
        <div class="footer-parts-p">
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's 
        standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to 
        make a type specimen book.</div>
    </div>
    <div class="footer-parts">
    	<div class="footer-parts-h3">Opening Hours</div>
        <div class="footer-parts-p">
        	Mon - Thu : 7:00 AM - 10:00 PM <br />
            Friday : 7:00 AM - 11:00 PM <br />
            Sat - Sun : 7:00 AM - 11:45 PM 
        </div>
    </div>
    <div class="footer-parts">
    	<div class="footer-parts-h3">Our Location</div>
        <div class="footer-parts-p">
        	3rd phace MG Layout,<br />
            Opp - Smaple School,<br />
            Pl Name - Free Time Learn,<br />
            Andhra Pradesh, Nellore(Dt),<br /> 
            India - 524002
        </div>
        <div class="footer-icons">
        	<ul>
            	<li><a href="#!"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#!"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#!"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#!"><i class="fa fa-google-plus"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="footer-bottom">
	<div class="white">&copy; <script language="javascript" type="text/javascript">document.write(new Date().getFullYear());</script>. All rights reserved by Home Cooking.</div>
</div>
<!------ End Footer ------->

<div class="clearfix"></div>
</div>

</body>
</html>