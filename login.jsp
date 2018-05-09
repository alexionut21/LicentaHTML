<%@ page import="java.util.ArrayList"%>
<%@ page import="licenta.quotes"%>
<%@ page import="licenta.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<!DOCTYPE html>
<html lang="en" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

  <meta charset="UTF-8">
  <title>Flat UI Login</title>
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	
	<link rel="stylesheet" href="loginCSS.css?v=1.3">
	<link rel="stylesheet" href="menu.css?v=1.7"> 
	<link rel="stylesheet" href="flipCard.css?v=1.1"> 
	<link rel="stylesheet" href="quotes.css?v=1.5">  
		
  
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
             <label>Email</label>
             <input type="email" name="email" placeholder="example@example.com" />
             <label >Password</label>
             <input type="password" name="password" placeholder="Password" />
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
<center><img src="Logo1.png" width="50%" height="50%"></center>
<div class="quotes" style="color:white">
<p>Do something today that your future self will thank you for</p>
</div>
<div class="row">
<div class="col-sm-4">
      <div class="flip">
        <div class="card"> 
          <div class="face front" > 
		  <div class="imgCCalc" style="border-radius:0.8em;background-image:url('https://cdn1.iconfinder.com/data/icons/healthy-lifestyle-dieting/256/Calorie_Calculator-512.png');">	
            <div class="inner">   
            </div>
			</div>	
          </div> 
          <div class="face back" style="border-radius:0.8em;background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);font-family: 'Gloria Hallelujah', cursive;font-size:20px;"> 
            <div class="inner text-center"> 
              <h3>Calorie Calc</h3>
              <p>Calorie Calculator can be used to estimate the number of calories a person 
              needs to consume each day. This calculator can also provide some simple guidelines for gaining or losing weight.</p>
			  <a href="Calc.html"><button type="button"  style="background:#CCCC;border-radius:0.5em;width:150px;height:50px;margin-top: 30%;font-family: 'Gloria Hallelujah', cursive;font-size:20px;">Know More</button></a>		  
            </div>
          </div>
         
    </div>
	</div>
      </div>
  <div class="col-sm-4">
      <div class="flip">
        <div class="card"> 	
		<div class="face front"> 
		  <div class="imgDiet">	
            <div class="inner">   
            </div>
			</div>	
          </div> 
          <div class="face back" style="border-radius:0.8em;background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);font-family: 'Gloria Hallelujah', cursive;font-size:20px;"> 
            <div class="inner text-center"> 
                 <h4>Diet</h4>
			  <a href="diet.html"><button type="button"  style="background:#CCCC;border-radius:0.5em;width:150px;height:50px;margin-top: 30%;font-family: 'Gloria Hallelujah', cursive;font-size:20px;">Know More</button></a>		  
            </div>
          </div>
		  </div>
        </div>	 
      </div>
  <div class="col-sm-4">
      <div class="flip">
        <div class="card"> 
		<div class="face front"> 
		  <div class="imgTraining">	
            <div class="inner">   
            </div>
			</div>	
          </div> 
          <div class="face back" style="border-radius:0.8em;background: linear-gradient(to bottom right, #ffffff 27%, #d8c3ba 100%);font-family: 'Gloria Hallelujah', cursive;font-size:20px;"> 
            <div class="inner text-center"> 
                <h4>Boddy mass index</h4>
                <p>Check your BMI (body mass index) with Slimming World. The free BMI calculator for men and women is based on your height and weight. Find your healthy weight range and set your own weight loss target.</p>
			  <a href="bmi.html"><button type="button"  style="background:#CCCC;border-radius:0.5em;width:150px;height:50px;margin-top: 30%;font-family: 'Gloria Hallelujah', cursive;font-size:20px;">Know More</button></a>		  
            </div>
			</div>
          </div>
        </div>	 
      </div>
    </div>
	<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="jquery.big-slide.js"></script>
	<script  src="loginJS.js"></script>
	<script  src="flipCard.js"></script>

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