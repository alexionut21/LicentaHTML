<%@ page import="java.util.ArrayList"%>
<%@ page import="licenta.quotes"%>
<%@ page import="licenta.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream;" %>  --%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Flat UI Login</title>
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,900i" rel="stylesheet"> 
  <link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet"> 	
  
	<link rel="stylesheet" href="loginCSS.css">
	<link rel="stylesheet" href="menu.css">
	<link rel="stylesheet" href="calendar.css">
	<link rel="stylesheet" href="banner.css">
	<link rel="stylesheet" href="popup.css">

  
</head>

<body>

  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
      <h2><a href="#" id="loginform">Login</a> | <a href="#">Register</a></h2>
    <div class="login">
      <div class="arrow-up"></div>
      <div class="formholder">
        <div class="randompad">
           <fieldset>
             <label name="email">Email</label>
             <input type="email" placeholder="example@example.com" />
             <label name="password">Password</label>
             <input type="password" placeholder="Password" />
             <input type="submit" value="Login" /> 
           </fieldset>
        </div>
      </div>
    </div>
    </div>
  </div>
</div>

<nav role="navigation">
  <div id="menuToggle">
   <input type="checkbox" />
   
   <span></span>
    <span></span>
    <span></span>
   
    <ul id="menu">
      <a href="#">
        <li>Home</li>
      </a>
      <a href="#">
        <li>Articles</li>
      </a>
      <a href="#">
        <li>Videos</li>
      </a>
      <a href="#">
        <li>Contact</li>
      </a>
      <a href="#">
        <li>Challenges</li>
      </a>
		 <a href="#">
        <li>Community</li>
		</a>
    </ul>
  </div>
</nav>
<div class="moving-zone" style="display:none">
    <div class="popup">
        <div class="popup-content">
            <div class="popup-text">
                <b><%=quotes.returnQuotesAndPhoto() %></b>
            </div>
        </div>
    </div>
</div>
<div>
<embed style="margin-left:25%" src="mypdf.pdf" width="500" height="375" type='application/pdf'>
<%-- <%
response.setContentType("text/html");
PrintWriter ooo = response.getWriter();
String fileName = "Test.pdf";
String filePath = "C:\\workspace\\Licenta\\WebContent\\";
response.setContentType("APPLICATION/PDF");
response.setHeader("Content disposition" , "attachment: filename=\""+fileName+"\"");
FileInputStream fi = new FileInputStream(filePath+fileName);
int i;
while((i=fi.read()) != 1)
	ooo.write(i);
	fi.close();
	ooo.close();
%> --%>
</div>
<script>
setTimeout(function(){
	    $(".moving-zone").delay(5000).fadeIn(500);
	});
</script>
    


	<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="jquery.big-slide.js"></script>
	<script  src="loginJS.js"></script>
	<script  src="popup.js"></script>



</body>
<script>
$(function(){
    $('#profile_image').change( function(e) {        
        var img = URL.createObjectURL(e.target.files[0]);
        $('#trash').attr('src', img);
    });
});
</script>
</html>
