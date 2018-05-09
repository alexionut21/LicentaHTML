<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="js">
<head>
<title>Body mass index</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" href="/apple-touch-icon.png">

<link rel="preload" href="/images/freedieting-logo.png" as="image">
<link rel="preload" as="font" href="/fonts/source-sans-pro-v11-latin-regular.woff2" type="font/woff2" crossorigin/>
<link rel="preload" as="font" href="/fonts/source-sans-pro-v11-latin-700.woff2" type="font/woff2" crossorigin/>
<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	<link rel="stylesheet" href="calc.css">
	<link rel="stylesheet" href="calcBeautified.css">
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.3">
	<link rel="stylesheet" href="flipCard.css">  
	<link rel="stylesheet" href="quotes.css">  	
	  
  </head>
<body>
<%	String log = (String) request.getAttribute("log");
	System.out.println("JSP "+log); 
	if (log==null) {
	%>
<form method="post" action="Login" id='formId'>
<%}else{ %>
<form method="post" action="logout" id='formId'>
<%} %>
  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
    <%
		if (log!=null) {
	%>
       <h2><a href="profile.jsp" id="loginform">My profile</a> | <a href="#" id="logout">Logout</a></h2>
	  <%}else{ %>
	  <h2><a href="#" id="loginform">Login</a> | <a href="beforeRegister.jsp">Register</a></h2><%} %>
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
<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null && msg != "null") {
	%>
	<div style="margin-left:37%;font-size:30px;color:red;"><%=msg %></div>
<% }%>
</form>

<nav role="navigation">
  <div id="menuToggle">
   <input type="checkbox" />
   
   <span></span>
    <span></span>
    <span></span>
   
     <ul id="menu">
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
<section class="container" style="margin-left:25%;width:750px;font-size:17px;">
<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:90%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">Body mass index</h1></center>
	                     <style type="text/css">
.displayNone { display:none; }
.displayBlock { display:block !important; }
#advanced { background-color: #FFFFFF; border: 1px solid #DEDEDE; display: none; font-size: 0.8125em; margin-left: auto; margin-right: auto; max-width: 350px; padding: 2%; }
.tooltable td { border-width:0; }
#zigResultsTable td { padding: 0px 4px 0px 4px; border:1px solid #d9d9d9; border-right:0; border-left:0; }
#zigResultsTable { width:100%; }
.small { font-size:13px; }
table.formulas .small { font-size:12px; }10
#nowwhat { min-width:75%; background: #d6d6d6; background: rgba(0, 0, 0, 0.06); border-radius: 3px; padding: 6px 12px; }
</style>
<script>


function showFeet() {
	var divblock = document.getElementById("feetlabel");
	divblock.style.display = "block";
	var cmblock = document.getElementById("cmlabel");
	cmblock.style.display = "none";
}

function showCM() {
	var divblock = document.getElementById("feetlabel");
	divblock.style.display = "none";
	var cmblock = document.getElementById("cmlabel");
	cmblock.style.display = "block";
}

function toggleMe(trigger, div) {
  toggleClass(document.getElementById(div),"displayBlock");
}</script>
 <noscript>
      <div class="alert">Hey! You have JavaScript disabled on your browser. The calculator will not work. <a target="_blank" href="http://www.enable-javascript.com/">See how to enable JavaScript on your browser.</a></div>
      </noscript>
<div class="tooltable">
        <form name="calc" class="no-space-bottom">
         <h2 style="background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);color:#893838;">BMI Calculator</h2>
          <div class="label-align">
            <label>Gender</label>
            <input type="radio" name="sex" id="sexFem" value="F" checked>
            <label for="sexFem" class="inline">Female</label>
            <input type="radio" name="sex" id="sexMale" value="M">
            <label for="sexMale" class="inline">Male</label>
          </div>
          <div class="label-align">
            <label>Current Weight</label>
            <span id="weighterror"><span class="tip"></span>
            <input name="weight"  type="number" id="weight"  autocorrect="off">
            </span>
            <input name="weighttype" type="radio" class="rad" id="weighttype1" value="P" onclick="document.getElementById('weight').value = ''" checked>
            <label for="weighttype1" class="inline">Pounds</label>
            <input name="weighttype" type="radio" class="rad" id="weighttype2" value="K" onclick="document.getElementById('weight').value = ''">
            <label for="weighttype2" class="inline">Kilos</label>
          </div>
          <div class="label-align">
            <label>Height</label>
            <input name="height" type="radio" class="rad" id="heightFeet" value="F" checked onclick="showFeet();document.getElementById('feet').value = '';document.getElementById('inches').value = ''">
            <label class="inline" for="heightFeet">Feet &amp; Inches</label>
            <input name="height" type="radio" class="rad" id="heightCM" value="C" onclick="showCM();document.getElementById('cm').value = ''">
            <label  class="inline" for="heightCM">CMs</label>
            <div id="feetlabel">
              <label>Feet</label>
              <span id="feeterror"><span class="tip"></span>
              <input name="feet" type="number" id="feet" autocorrect="off" >
              </span>
              <label class="inline">Inches</label>
              <span id="incheserror"><span class="tip"></span>
              <input name="inches" type="number"  id="inches" autocorrect="off">
              </span> </div>
            <div id="cmlabel" style="display:none;">
              <label>CM</label>
              <span id="cmerror"><span class="tip"></span>
              <input name="cm" type="number" id="cm" autocorrect="off">
              </span> </div>
          </div>
    <div class="space-top-large">
            <input type="submit" class="btn btn-blue btn-large float-center text-tall" value="Calculate" style="padding: 7px 40px;float:center;background: #893838;" onClick="calcalcIt();event.preventDefault();" id="Button1" name="Button1">
          </div>      
             <div id="printArea" style="display:none;">
            <div id="printAreainset">
			<div class="tooltable float-center" style="min-width:80%;padding-right:0;padding-left:0;">
			   <table width="100%"  border="0" cellspacing="0" cellpadding="0" style="box-shadow:none;">
                  <tr>
                    <td align="right" class="tooltable-cell-width"><label class="biglabel">Your BMI</label></td>
                    <td align="left" class="tooltable-cell-width"><div class="calwrap"><span id="answer">?</span><span id="cal1" class="cal">Score</span></div></td>
                  </tr>
                  <tr>
                    <td align="right" class="tooltable-cell-width"><label class="biglabel">Result</label></td>
                    <td align="left" class="tooltable-cell-width"><div class="calwrap"><span id="lose">?</span><span id="cal2" class="cal">BMI</span></div></td>
                  </tr>
                </table>
			</div>
			</div>
			</div>
        </form>
      </div>
	
	
	 

 </div>


 
</section>

<script  src="bmi.js" type="text/javascript"></script><br><br>
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
<script>
document.getElementById("logout").onclick = function() {
    document.getElementById("formId").submit();
}
</script>
</body>
</html>

<!-- Dynamic page generated in 0.121 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2018-03-26 19:19:29 -->

<!-- Compression = gzip -->