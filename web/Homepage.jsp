<!DOCTYPE html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/Homepage.css">

<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<title>Homepage</title>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {margin: 0;}

   .dropbtn {
  background-color: #5ea5a6;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px) {
  ul.topnav li.right, 
  ul.topnav li {float: none;}
}
.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
</head>
<fmt:bundle basename="app">
    <div class="paragraph-wrapper">
            <a href ="Homepage.jsp" >   <img  align="left" src="Images/download.png" alt="logo" width = "13%" /></a>
        <a href=""> <p >Home </p></a> <p> | </p> <a href=""> <p >  Support  </p></a> 
       <div class="paragraph-wr">
            <button class ="link" style="color:black" onclick="openForm()" >Account region</button> <p> | </p><a  href="">  Logout</a>
       
           </div>
        
     
<div class="form-popup" id="myForm">
  <form action="Homepage.php" class="form-container">
    <h3>Select Region</h3>

   <input type="radio" id="UK" name="gender" checked="checked" value="UK">
  <img src="Images/UK_flag.png"width="30" height="20">&nbsp;<label for="UK">Amazon UK</label><br>
  <input type="radio" id="Germany" name="gender" value="Germany"> 
  <img src="Images/germany-flag.jpg"width="30" height="20">&nbsp;<label for="Germany">Amazon Deutschland</label><br>
  <input type="radio" id="France" name="gender" value="France">
  <img src="Images/france-flag.jpg"width="30" height="20">&nbsp;<label for="France">Amazon France</label><br>
    <input type="radio" id="Spain" name="gender" value="Spain">
   <img src="Images/spain-flag.jpg"width="30" height="20">&nbsp; <label for="Spain">Amazon Espanol</label><br>
    <input type="radio" id="Italy" name="gender" value="Italy">
<img src="Images/Italy-Flag.png"width="30" height="25">&nbsp; <label for="Italy">Amazon Italian</label>


 
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
</div>
        
        <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
</div>

   
    <br><br>
    
<body>

<ul class="topnav">
    <li><a href="index.jsp" class="nav-item nav-link ">Home</a></li>
    <li><a href="Product.jsp" class="nav-item nav-link ">Advertising</a></li>
                <li>  <a href="Invoices.jsp" class="nav-item nav-link ">Invoices</a></li>
                  <li> <a href="" class="nav-item nav-link ">Report </a></li>
                 
                     <li> <a href="" class="nav-item nav-link ">Payments </a></li>
                     <li>  <a href="" class="nav-item nav-link ">Settings </a></li>
</ul>
 
  
    

<section class="presentation">
				<div class="introduction">
					<div class="intro-text">
                             
					<br>
                                        <h2><b>Grow your business with Amazon</b> </h2>
                                          <br>
                                          <p style="font-family:verdana" style="font-size:13px" >When you register as our vendor, Amazon becomes a full-time distributor of your products.<br> We buy and store the inventory, and take care of everything from shipping and pricing to <br> customer service and returns. </p>
<hr class="style1"><br>
        
        <h3>More ways to sell on Amazon</h3>
        <p style="font-family:verdana" style="font-size:13px" >If you’re not already an Amazon vendor, you may be interested in selling through Amazon Marketplace. It’s quick to sign up<br> and no invitation is needed. Half the <br> products sold on Amazon worldwide are from businesses that offer their products through Amazon Marketplace.</p>
        <a href =""> <p style="text-align:center">Find out if Amazon Marketplace is right for your business</p></a>
  
	
   

					</div>
					
				</div>
    
    

</section>
    
    <div class="footer">
        <a href="">Amazon Vendor Central Site Terms</a><font color="black"> © 2006-2020 Amazon.com, Inc. and its affiliates. All Rights Reserved. Vendor Central is a trademark of Amazon.com, Inc. or its affiliates.</font>
</div>
   </fmt:bundle>
</body>
</html>
