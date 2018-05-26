<%@ page import="licenta.DBConnection"%>
<%@ page import="licenta.Select"%>
<%@ page import="views.Articol"%>
<%@ page import="licenta.Insert"%>
<%@ page import="licenta.DataParser"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Insert Challenge</title>
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.2">
	<link rel="stylesheet" href="quotes.css">  	

  
</head>

<body>

  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
      <h2><a href="#" id="loginform">Logout</a></h2>
    <div class="login">
    </div>
    </div>
  </div>
</div>  


<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:50%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;"> Insert exercise </h1></center>
 <div>
        <div class="container" style="margin-left:20%;width:780px;font-size:17px;background-color:transparent;">
			<div class="tooltable" style="background-color:transparent;" >
				<div class="row">
					<form method="post" action="Exercise">
							<div class="group" >	
							<label name="name"  style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Exercise name</label>
							<input name="name" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" placeholder="Exercise name..." id="title"  autocorrect="off"><br>
							<label name="pozaInceput"  style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Start position</label>
							<input type="file" id="pozaInceput" name="pozaInceput" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" value="Browse..."/>				
							<label name="pozaSfarsit" style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >End position</label>	
							<input type="file" id="pozaSfarsit" name="pozaSfarsit" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" value="Browse..."/>	
							<label name="content" style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Content</label>
							<textarea rows="7" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" class="form-control" name="content" id="content" placeholder="Describe exercise..." style="color:black;font-family: 'Gloria Hallelujah', cursive;font-size:18px;" ></textarea>							
							<label name="name"  style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Muscle Group</label>
							<select name="MuscleGroup" style="color:black;font-family: 'Gloria Hallelujah', cursive;font-size:19px;">
  							<option value="Chest">Chest</option>
							<option value="Back">Back</option>
							<option value="Abs">Abs</option>
							<option value="Legs">Legs</option>
							<option value="Shoulders">Shoulders</option>
							<option value="Traps">Traps</option>
							<option value="Biceps">Biceps</option>
							<option value="Triceps">Triceps</option>
							</select><br>							
							<label name="reps"  style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Repetitions</label>
							<input name="reps" style="font-family: 'Gloria Hallelujah', cursive;font-size:21px;color:black;" placeholder="Repetitions..." id="title"  autocorrect="off"><br>
						
							 </div><br>
							<div class="group">
							 <div class="space-top-large">
					            <input type="submit" class="btn btn-blue btn-large float-center text-tall" style="padding: 7px 40px;float:right;background: #893838;color:white" onClick="calcalcIt();event.preventDefault();" id="Button1" name="Button1">
					          </div><br><br><br>
					          </div>

						</form>
						</div>							
            </div>
        </div>
 </div>




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