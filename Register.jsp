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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	
	<link rel="stylesheet" href="loginCSS.css?v=1.2">
	<link rel="stylesheet" href="menu.css?v=1.3"> 
	<link rel="stylesheet" href="register.css?v=1.39">
<style>
button:active {
  box-shadow: 0 3px 0 #00823F;
  top: 3px;}
  </style>
</head>	
	<body>
	<div id="wrap">
  <div id="regbar">
    <div id="navthing">
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
      <b href="#">
        <li>Home</li>
      </b>
      <b href="#">
        <li>Articles</li>
      </b>
      <b href="#">
        <li>Videos</li>
      </b>
      <b href="#">
        <li>Contact</li>
      </b>
      <b href="#">
        <li>Challenges</li>
      </b>
		 <b href="#">
        <li>Community</li>
		</b>
    </ul>
  </div>
</nav>

<form id="regForm"  method="post" action="Register">

<h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:50%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">Register:</h1>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p><input name="fName" placeholder="First name..." oninput="this.className = ''"></p>
  <p><input name="lName" placeholder="Last name..." oninput="this.className = ''"></p>
  <p><input name="bDate" placeholder="Birth Date ...." oninput="this.className = ''"></p>
  </div>

<div class="tab">Gender:
 <p id='lifestyle'>
   <table style="margin-left:20%;">
   <tr>
   <td align="center" id="female"><h5>Female</h5>
   </td>
   <td align="center" id="male"><h5>Male</h5>
   </td>
   </tr>
   <tr>
   <td align="center">
   <input id='fem' type="radio" name="gender" autocomplete="off" value="F">
   <label for='fem'><button ><img class="img_lifestyle" src="female.png"></button></label>
   </td>
    <td align="center">
   <input id='ma' type="radio" name="gender" autocomplete="off" value="B">
   <label for='ma'><img class="img_lifestyle"  src="male.png"></label>
   </td>
   </tr>
   </table>
  </p>
</div>  
  
<div class="tab">Personal info:
  <p><input name="height" placeholder="Height..." oninput="this.className = ''"></p>
  <p><input name="weight" placeholder="Weight..." oninput="this.className = ''"></p>
</div>

<div class="tab">How you better describe yourself:  
   <br><br>
   <p id='frame_tip_somatic'>
   <table>
   <tr>
   <td align="center">
   <input id='ectomorf' type="radio" name="somatic" autocomplete="off" value="ectomorf">
   <label  for='ectomorf'><img class="img_tip_somatic" src="ectomorf.png"></label>
   </td>
    <td align="center">
   <input id='mezomorf' type="radio" name="somatic" autocomplete="off" value="mezomorf">
   <label for='mezomorf'><img class="img_tip_somatic"  src="http://www.iyivucut.com/wp-content/uploads/2017/05/mezomorf-vucut-tipi.png"></label>
   </td>
    <td align="center">
    <input id='endomorf' type="radio" name="somatic" autocomplete="off" value="endomorf">
    <label for='endomorf'><img class="img_tip_somatic" src="http://www.iyivucut.com/wp-content/uploads/2017/05/endomorf-vucut-tipi.png"></label>		
   </td>
   </tr>
   </table>
</div>

<div class="tab">Stress level  
<table style="width:40%;font-size:20px;color:white" align="left">
<tr>
<td align="center">1-4</td>
<td align="center">5-8</td>
<td align="center">9-10</td>
</tr>
<tr>
<td id="frame" align="center"><input id='one' type="radio" name="options" autocomplete="off" value="1-4">
            <label class='block' for='one'></label> </td>
<td id="frame" align="center"><input id='two' type="radio" name="options" autocomplete="off" value="5-8">
            <label class='block' for='two'></label>	</td>
<td id="frame" align="center"><input id='three' type="radio" name="options" autocomplete="off" value="9-10">
            <label class='block' for='three'></label>						
				</td>				
</tr>
</table>
<br><br><br><br><br><br>				
</div>

<div class="tab">Your lifestyle:
  <br><br>
   <p id='lifestyle'>
   <table>
   <tr>
   <td align="center">
   <input id='sedentary' type="radio" name="lifestyle" autocomplete="off" value="sedentary">
   <label  for='sedentary'><img class="img_lifestyle" src="3.jpg"></label>
   </td>
    <td align="center">
   <input id='moderatly' type="radio" name="lifestyle" autocomplete="off" value="moderatly">
   <label for='moderatly'><img class="img_lifestyle"  src="2.jpg"></label>
   </td>
    <td align="center">
    <input id='active' type="radio" name="lifestyle" autocomplete="off" value="active">
    <label for='active'><img class="img_lifestyle" src="1.jpg"></label>		
   </td>
   </tr>
   </table>
  </p>
</div>

<div class="tab">
<table style="width:40%;font-size:20px;color:white" align="left">
<tr>
<td align="center">Do you have any health problems?</td>
<td align="center">Yes</td>
<td align="center">No</td>
	
</tr>
<tr>
<td></td>
<td id="frame" align="center"><input id='one' type="radio" name="q1" autocomplete="off" value="yes">
            <label class='block' for='one'></label> </td>
<td id="frame" align="center"><input id='two' type="radio" name="q1" autocomplete="off" value="no">
            <label class='block' for='two'></label>	</td>
</tr>
<tr>
<td align="center">Have you ever had surgery?</td>
<td align="center">Yes</td>
<td align="center">No</td>
	
</tr>
<tr>
<td></td>
<td id="frame" align="center"><input id='one' type="radio" name="q2" autocomplete="off" value="yes">
            <label class='block' for='one'></label> </td>
<td id="frame" align="center"><input id='two' type="radio" name="q2" autocomplete="off" value="no">
            <label class='block' for='two'></label>	</td>
</tr>
<tr>
<td align="center">Any Heart disease?</td>
<td align="center">Yes</td>
<td align="center">No</td>
	
</tr>

<tr>
<td></td>
<td id="frame" align="center"><input id='three' type="radio" name="q3" autocomplete="off" value="yes">
            <label class='block' for='three'></label> </td>
<td id="frame" align="center"><input id='four' type="radio" name="q3" autocomplete="off" value="no">
            <label class='block' for=''four'></label>	</td>
</tr>
<tr>
<td align="center">Are you currently treated for any disease?</td>
<td align="center">Yes</td>
<td align="center">No</td>
	
</tr>
<tr>
<td></td>
<td id="frame" align="center"><input id='five' type="radio" name="q4" autocomplete="off" value="yes">
            <label class='block' for='five'></label> </td>
<td id="frame" align="center"><input id='six' type="radio" name="q4" autocomplete="off" value="no">
            <label class='block' for='six'></label>	</td>
</tr>
</table>
<br><br><br><br><br><br>	
</div>

<div class="tab">How you better describe yourself:
 <br><br>
   <p id='lifestyle'>
   <center><table style="margin-left:20%;">
   <tr>
   <td align="center" style="color:white;">Lose Weight
   </td>
   <td align="center" style="color:white;">Gain muscle
   </td>
   </tr>
   <tr>
   <td align="right">
   <input id='loseWeight' type="radio" name="objective" autocomplete="off" value="loseWeight">
   <label  for='loseWeight'><img class="img_lifestyle" src="https://png.pngtree.com/element_origin_min_pic/17/04/13/8fb1d65a9b2b87dc70a1e190d7399cf5.jpg"></label>
   </td>
    <td align="right">
   <input id='GainMuscle' type="radio" name="objective" autocomplete="off" value="GainMuscle">
   <label for='GainMuscle'><img class="img_lifestyle"  src="https://dietbros.com/wp-content/uploads/2017/01/Before-After-Protein.png"></label>
   </td>
   </tr>
   </table></center>
  </p>
</div>

<div class="tab">Info:
  <p><input name="email" placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input name="phone" placeholder="Phone..." oninput="this.className = ''"></p>
  <p><input name="password" placeholder="Password..." oninput="this.className = ''"></p>
</div>
<div class="tab">

 <button  type="submit" id="submit" class="btn rounded"><span class="text-green">Register</span></button>
</div>
<div style="overflow:auto;">
  <div style="float:right;">
    <button  type="button" id="prevBtn" onclick="nextPrev(-1)" class="btn rounded"><span class="text-green">Previous</span></button>
	<button type="button" id="prevBtn" onclick="nextPrev(1)" class="btn rounded"><span class="text-green">Next</span></button>
	
  </div>
</div>

<!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
</div>
</form>

	<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="jquery.big-slide.js"></script>
	<script  src="loginJS.js"></script>
	<script  src="register.js"></script>
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