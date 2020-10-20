<%-- 
    Document   : index
    Created on : Aug 4, 2008, 10:33:51 PM
    Author     : nbuser
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Auto-Completion using AJAX</title>
    
     <p>Go back to <a href="index.jsp" class="link">application home</a>.</p>
     <p>Go back to <a href="Home.jsp" class="link"> home</a>.</p>

        <script type="text/javascript" src="javascript.js"></script>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body onload="init()">
    <h1>Auto-Completion using AJAX</h1>

        <p>This example shows how you can do real time auto-completion using Asynchronous
            JavaScript and XML (Ajax) interactions.</p>

    <p>In the form below enter a name. Possible names that will be completed are displayed below
        the form. For example, try typing in &quot;Bach,&quot &quot;Mozart,&quot; or &quot;Stravinsky,&quot;
        then click on one of the selections to see composer details.</p>

    <form name="autofillform" action="autocomplete">
      <table border="0" cellpadding="5"> 
        <tbody>
          <tr>
            <td><strong>Composer Name:</strong></td>
                        <td>
                            <input type="text"
                       size="40" 
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
      
  </body>
 
</html>
