<%@ page import="java.util.ArrayList"%>
<%@ page import="licenta.quotes"%>
<%@ page import="licenta.DBConnection"%>
<%@ page import="views.Utilizator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Profile</title>
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,900i" rel="stylesheet"> 
  <link href="https://fonts.googleapis.com/css?family=Comfortaa:400,700" rel="stylesheet"> 	
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.3">
	<link rel="stylesheet" href="calendar.css">
	<link rel="stylesheet" href="banner.css">
	<link rel="stylesheet" href="popup.css">
	<link rel="stylesheet" href="challenges.css?v=1.9">
</head>
<body>

  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
      <h2><a href="profile.jsp" id="loginform">My profile</a> | <a href="#">Logout</a></h2>
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
<div class="moving-zone" style="display:none">
    <div class="popup">
        <div class="popup-content">
            <div class="popup-text">
                <b><%=quotes.returnQuotesAndPhoto() %></b>
            </div>
        </div>
    </div>
</div>
<% String nume = (String) request.getAttribute("nume");
   String prenume = (String) request.getAttribute("prenume");
   String sex = (String) request.getAttribute("sex");
   String greutate = (String) request.getAttribute("greutate");
   String stilViata = (String) request.getAttribute("stilViata");
   String nivelStres = (String) request.getAttribute("nivelStres");
   String tipSomatic = (String) request.getAttribute("tipSomatic");
   String obiectiv = (String) request.getAttribute("obiectiv");
   String inaltime = (String) request.getAttribute("inaltime");
   String imc = (String) request.getAttribute("imc");
%>
<!-- About -->
<div class="about-me" id="about"> 
	<center><h3 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:30%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">My Profile</h3></center>
	<div class="container" style="margin-left:5%;width:1000px;font-size:21px;color:white;">
		<div class="row">
			<div class="col-md-4 col-xs-12">
				<div class="mydetails slideanim text-center">
				<img class="img-circle img-responsive" src="http://placehold.it/200x200" id="trash" alt="Generic placeholder image" width="200" height="200" >				
				<br>
				<input type="file" id="profile_image" style="display: none;" />
				<input type="button" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" value="Browse..." onclick="document.getElementById('profile_image').click();" />
					<h3><%=nume %><br><%=prenume %></h3>					
				</div>
			</div>
			<div class="col-md-8 col-xs-12"> 
				<div class="myskills slideanim">
					<h3 class="text-center" style="font-size:34px;color:#893838;">About me</h3>
					<p style="font-size:21px;color:white;" class="skill-text"></p>
					<div class="skill-info"> 
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Gender</h4></td>
										<td><span class="longline1"></span><span class="shortline1"></span></td>
										<td><p><%=sex %></p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Goal</h4></td>
										<td><span class="longline2"></span><span class="shortline2"></span></td>
										<td><p><%=obiectiv %></p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Date of birth</h4></td>
										<td><span class="longline3"></span><span class="shortline3"></span></td>
										<td><p>.getRegisterDate()</p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Height</h4></td>
										<td><span class="longline4"></span><span class="shortline4"></span></td>
										<td><p><%=inaltime %></p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Weight</h4></td>
										<td><span class="longline5"></span><span class="shortline5"></span></td>
										<td><p><%=greutate %></p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;">Somatic Type</h4></td>
										<td><span class="longline5"></span><span class="shortline5"></span></td>
										<td><p><%=tipSomatic %></p></td>
									</tr>
									<tr>
										<td><h4 style="font-size:21px;color:#893838;"><a href="MenAdvLW.pdf" download>Download training</a></h4></td>						
									</tr>								
								</tbody>
							</table>
						</div>	
					</div>
				</div>	
			</div>
		</div>	
	</div><br><br><br><br><br><br><br><br><br><br>
</div>
<div class="box">
    <div class="row">
        <div class="col-md-12">
            <!-- Challenge Exercise -->
            <div class="col-md-3">
                                    <img src="challengesGifs/alternating_dumbbell_single_leg_deadlift-5943e80f54e13.gif" class="img-responsive center-block" width="100%" alt="Alternate Dumbbell Single Leg Deadlift">
                            </div>
            <!-- /Challenge Exercise -->

            <!-- Challenge Meta -->
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-8"><br><br>
                        <div class="challenge-deadline">
                            December 2, 2017
                        </div>
                        <div class="challenge-name">
                                 Alternate Dumbbell Single Leg Deadlift (per side)
                                                    </div>
                        <div class="challenge-target">
                            Target: <span>30 REPS</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- /About -->
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
<br><br>
<footer style="background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);height:10%">
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
<script>
$(function(){
    $('#profile_image').change( function(e) {        
        var img = URL.createObjectURL(e.target.files[0]);
        $('#trash').attr('src', img);
    });
});
</script>
</html>
