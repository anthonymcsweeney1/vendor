<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="loc" value="com.en_US"/>
<c:if test="${!(empty param.locale)}">
    <c:set var="loc" value="${param.locale}"/>
</c:if>
<fmt:setLocale value="${loc}" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/invoices.css">
    <script type="text/javascript" src="javascript.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<title>Invoices</title>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<fmt:bundle basename="app">
    <div class="paragraph-wrapper">
            <a href ="Homepage.jsp" >   <img  align="left" src="Images/download.png" alt="logo" width = "13%" /></a>
        <a href=""> <p ><fmt:message key="home"/> </p></a> <p> | </p> <a href=""> <p >  <fmt:message key="support"/>  </p></a> 
       <div class="paragraph-wr">
         <button class = "link" onclick="openForm()">Switch region</button>   <img src="<fmt:message key="flag"/>"width="30" height="20">&nbsp; <fmt:message key="region"/> <p> | </p><a  href="">  <fmt:message key="logout"/> </a>
       
           </div>
        
     

        
 
</div>

   
    <br><br>
    
<body>

<ul class="topnav">
    <li><a href="index.jsp" class="nav-item nav-link "><fmt:message key="home"/></a></li>
    <li><a href="Product.jsp" class="nav-item nav-link "><fmt:message key="advertising"/></a></li>
                <li>  <a href="Invoices.jsp" class="nav-item nav-link "><fmt:message key="invoices"/></a></li>
                  <li> <a href="" class="nav-item nav-link "><fmt:message key="report"/> </a></li>
                 
                     <li> <a href="" class="nav-item nav-link "><fmt:message key="payments"/> </a></li>
                     <li>  <a href="" class="nav-item nav-link "><fmt:message key="Settings"/> </a></li>
</ul>
 
   
  <div class="dropdown-content" style="left:0;">
      <c:url value="application.jsp" var="engURL">
   <c:param name="locale" value="en_US"/>
 </c:url>
   
       <c:url value="Invoices.jsp" var="engURL">
   <c:param name="locale" value="en_US"/>
 </c:url>
      
      <a href="${engURL}">English <img src="https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1280px-Flag_of_the_United_Kingdom.svg.png" height="35" width="45"/></a></a></a> 
   
<c:url value="Invoices.jsp" var="frenchURL">
     <c:param name="locale" value="fr_FR"/>
</c:url>

<a href="${frenchURL}">French <img src="https://www.flagsonline.it/uploads/2016-6-6/420-272/france.jpg" height="35" width="45"/></a></a>
    
 <c:url value="Invoices.jsp" var="chineseURL">
     <c:param name="locale" value="zh_HK"/>
  </c:url>

<a href="${chineseURL}">Spain <img src="Images/spain-flag.jpg"width="45" height="40"></a>

 <c:url value="Invoices.jsp" var="germanURL">
     <c:param name="locale" value="de_GR"/>
</c:url>

<a href="${germanURL}">German <img src="Images/germany-flag.jpg" height="35" width="45"/></a></a>

   <c:url value="Invoices.jsp" var="italiaURL">
     <c:param name="locale" value="it_IT"/>
</c:url>

<a href="${italiaURL}">Italy <img src="Images/Italy-Flag.png" height="35" width="45"/></a></a>
   
<c:url value="Invoices.jsp" var="newzealandURL">
     <c:param name="locale" value="nl_NL"/>
</c:url>

<a href="${newzealandURL}">New Zealand <img src="Images/NL.png" height="35" width="45"/></a></a>
   
    </div>
</div>
<br><br> <br><br>

            <div align ="left">
                                        <h2><b><fmt:message key="header"/></b> </h2></div>                               
                                          
   <br><br><br><br>
   
<body>
   <body onload="init()">
   
<div class="holder">
    <div class="column-left"><p style="visibility: hidden;"> 
	Some invisible text 
</p> </div>
    <div class="column-center">
       <div align="left">  <a style="font-size:20px; color:grey">0 deductions selected</a>
           <br>           <br>
           <b>  Available actions</b>
        <br>        <br>
      
      <select name="type" placeholder ="Select an action" id="type">
          <option value="" disabled selected>Select an action</option>
  <option value="volvo">Invoice</option>
  <option value="saab">Agreement</option>
  <option value="mercedes">Purchase Order</option>
  
</select>
        
      
          <hr class="style3"><br>
          <a style="font-size:20px; color:grey"> Refine by</a> <br>
          <b>Keyword, name or invoice number</b>
           
  
   
          
          <br>  <b> Date range</b>   <br>
          <input type="date" id="" name="">
          
                 <b> To:</b>
                 <input type="date" id="" name="">
      </div>
    </div>
    <div class="column-right">
    <table  id="myTable">
  <tr class="header">
    <th >Invoice ID</th>
    <th >Invoice date</th>
      <th >Agreement ID / title</th>
        <th>Amount</th>
             <th >Download</th>
  </tr>
  <tr>
    <td>2129000222</td>
    <td>03/09/2020</td>
    <td><b>38648</b> <br>FR MI - AVS Straight Payment</td>
    <td>1,843 EUR</td>
    <td><a  href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>2175000287</td>
   <td>08/06/2020</td>
    <td><b>38648</b> <br>UK PC FLEXIBLE_ASIN_BASED</td>
    <td>1,843 EUR</td>
    <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>2193539</td>
      <td>12/08/2020</td>
      <td><b>38648</b> <br>FR PC FLEXIBLE_ASIN_BASED</td>
    <td>1,843 EUR</td>
    <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>286745</td>
     <td>15/10/2020</td>
      <td><b>38648</b> <br>FR Electronic</td>
    <td>1,843 EUR</td>
   <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>40458394</td>
  <td>25/06/2020</td>
  <td><b>38648</b> <br>ES PC ready to school</td>
    <td>1,843 EUR</td>
   <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>43694834</td>
  <td>29/08/2020</td>
 <td><b>38648</b> <br>UK Electronic - AVS Straight Payment</td>
    <td>1,843 EUR</td>
    <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>5843584</td>
  <td>13/07/2020</td>
  <td><b>38648</b> <br>FR Electronic LOGE3</td>
    <td>1,843 EUR</td>
   <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
  <tr>
    <td>683946</td>
  <td>22/09/2020</td>
  <td><b>38648</b> <br>FR FLEXIBLE_ASIN_BASED</td>
    <td>1,843 EUR</td>
    <td><a href="Images/Invoice_2129000222.pdf" download ><p>Download as PDF</p></a></td>
  </tr>
</table>
    </div>
 
     <form name="autofillform" action="autocomplete">
      <table border="0" cellpadding="5"> 
        <tbody>
          <tr>
        
                        <td>
                            <input type="text"
                       size="15" 
                       id="complete-field"
                                   onkeyup="doCompletion()">
                        </td>
                        
          </tr>
          <tr>
              <td id="auto-row" colspan="2">
                <table id="complete-table" class="popupBox" />
              </td>
          </tr>
           <input type="submit">
        </tbody>
      </table>
    </form>

<div class="form-popup" id="myForm">
  <form action="" class="form-container">
      
    <h1>Switch regional accounts</h1>
    
     <c:url value="application.jsp" var="engURL">
   <c:param name="locale" value="en_US"/>
 </c:url>
   
       <c:url value="Invoices.jsp" var="engURL">
   <c:param name="locale" value="en_US"/>
 </c:url>
      
    <input type="radio"  >  <a href="${engURL}">GB - Vendor - GB [expansion] <img src="https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1280px-Flag_of_the_United_Kingdom.svg.png" height="35" width="45"/></a></a></a> 
<br>
<c:url value="Invoices.jsp" var="frenchURL">
     <c:param name="locale" value="fr_FR"/>
</c:url>

<input type="radio"><a href="${frenchURL}">FR - Vendor <img src="https://www.flagsonline.it/uploads/2016-6-6/420-272/france.jpg" height="35" width="45"/></a></a>
    <br>
 <c:url value="Invoices.jsp" var="chineseURL">
     <c:param name="locale" value="zh_HK"/>
  </c:url>

<input type="radio"><a href="${chineseURL}">ES - Vendor Spain <img src="Images/spain-flag.jpg"width="45" height="40"></a>
<br>
 <c:url value="Invoices.jsp" var="germanURL">
     <c:param name="locale" value="de_GR"/>
</c:url>

<input type="radio"><a href="${germanURL}">DE - Vendor direct business <img src="Images/germany-flag.jpg" height="35" width="45"/></a></a>
<br>
   <c:url value="Invoices.jsp" var="italiaURL">
     <c:param name="locale" value="it_IT"/>
</c:url>

<input type="radio"><a href="${italiaURL}">IT - Vendor Italia S.r.l. <img src="Images/Italy-Flag.png" height="35" width="45"/></a></a>
  <br> 
<c:url value="Invoices.jsp" var="newzealandURL">
     <c:param name="locale" value="nl_NL"/>
</c:url>

<input type="radio"><a href="${newzealandURL}">NL - Vendor Benelux <img src="Images/NL.png" height="35" width="45"/></a></a>
   
    
<br><br>

    
    <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>
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

     
    
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

</body>
    
    <div class="footer">
        <a href="">Amazon Vendor Central Site Terms</a><font color="black"> © 2006-2020 Amazon.com, Inc. and its affiliates. All Rights Reserved. Vendor Central is a trademark of Amazon.com, Inc. or its affiliates.</font>
</div>
   </fmt:bundle>
</body>
</html>
