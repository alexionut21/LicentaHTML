<%@ page import="licenta.DBConnection"%>
<%@ page import="licenta.Select"%>
<%@ page import="licenta.DataParser"%>
<%@ page import="views.Provocare"%>
<%@ page import="licenta.Insert"%>
<%@ page import="licenta.DataParser"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.2">
	<link rel="stylesheet" href="calendar.css?v=1.4">
	<link rel="stylesheet" href="challenges.css?v=1.9">


  
</head>

<body>

  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
       <h2><a href="profile.jsp" id="loginform">My profile</a> | <a href="#" id="logout">Logout</a></h2>
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
   
   <ul id="menu" style="width:300px">
      <a href="login.jsp">
        <li>Home</li>
      </a>
      <a href="Article.jsp">
        <li>Articles</li>
      </a>
      <a href="Calc.jsp">
        <li>Calorie calculator</li>
      </a>
      <a href="bmi.jsp">
        <li>Body mass index</li>
      </a>
      <a href="Challenges.jsp">
        <li>Challenges</li>
      </a>
		 <a href="Diet.jsp">
        <li>Diet</li>
		</a>
    </ul>
  </div>
</nav>
<%if(request.getParameter("image")!=null){
Insert.insertProvocare(DataParser.returnSysdate(), request.getParameter("descriere"), request.getParameter("image"), request.getParameter("ziAfisare"),request.getParameter("nrRepetari")); 
}%>
<div class="challenge-title">Daily<br> Challenge</div><br>
 <div class="container">
    <div id="day"></div>
    <div id="date"></div>
  </div>
<div class="box">
<%
ArrayList<Provocare> provocare = Select.selectProvocare();
for(Provocare pro : provocare){%>
    <div class="row">
        <div class="col-md-12">
            <!-- Challenge Exercise -->
            <div class="col-md-3">
                                    <img src="<%=pro.getImagine() %>" class="img-responsive center-block" width="100%" alt="Alternate Dumbbell Single Leg Deadlift">
                            </div>
            <!-- /Challenge Exercise -->

            <!-- Challenge Meta -->
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-8"><br><br>
                        <div class="challenge-deadline">
                            <%=DataParser.returnDate(pro.getData()) %>
                        </div>
                        <div class="challenge-name">
                               <%=pro.getDescriere() %>
                                                    </div>
                        <div class="challenge-target">
                            Target: <span><%=pro.getRepetare() %></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Challenge Meta -->

            <!-- Challenge Actions -->
            <div class="col-md-3">
                <div class="single-action text-center"><br><br><br><br><br>
                    <a href="/challenge/daily/151/Alternate%20Dumbbell%20Single%20Leg%20Deadlift%20%28per%20side%29" class="btn txt-uppercase">
                        Join Challenge
                    </a>
                </div>
                
            </div>
            <!-- /Challenge Actions -->

        </div>
    </div><%} %>
</div>
	<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="jquery.big-slide.js"></script>
	<script  src="loginJS.js"></script>
	<script  src="calendar.js"></script>
	<br><br>
<footer style="background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);height:50%">
  <center>
<a style="font-size:22px;font-family: 'IM Fell Great Primer SC', serif;" href="SiteMap.jsp">Site Map</a> | 
<a style="font-size:22px;font-family: 'IM Fell Great Primer SC', serif;"href="#">Privacy Policy</a>
<img  border="0" class="img_zoom" src="footer\twitter.png" style="height:40px;width:40px; float:center;" title="Twitter" alt="Twitter">
<img border="0" class="img_zoom" src="footer\facebook.png" style="height:40px;width:40px; float:center;" title="Facebook" alt="Facebook">
<img border="0" class="img_zoom" src="footer\ldn.png" style="height:40px;width:40px; float:center;" title="linkedin" alt="linkedin">
<img border="0" class="img_zoom" src="footer\googleplus.png" style="height:40px;width:40px; float:center;"  title="GooglePlus" alt="GooglePlus">
<p style="font-size:20px;font-family: 'IM Fell Great Primer SC', serif;">Nume Site &copy;. All rights reserved.</p>
</center>
</footer>

</body>

</html>
