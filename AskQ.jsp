<%@ page import="licenta.DBConnection"%>
<%@ page import="licenta.Select"%>
<%@ page import="licenta.DataParser"%>
<%@ page import="views.Comentariu"%>
<%@ page import="licenta.DataParser"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="licenta.Insert"%>
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

	<link rel="stylesheet" href="calc.css">
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.3">  
	<link rel="stylesheet" href="quotes.css">  	
	<link rel="stylesheet" href="AskQcomments.css">  	
</head>

<body>

  <%String log = (String) request.getAttribute("log");
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

        <div class="container" style="margin-left:20%;width:780px;font-size:17px;background-color:transparent;">
			<div class="tooltable" style="background-color:transparent;" >
				<div class="row">
					<div style="background-color:transparent;">
						<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:120%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">Ask me a question !</h1></center>
						<p style="color:white;font-family: 'Gloria Hallelujah', cursive;font-size:19px;text-align:center;">
							You can ask me anything related to fitness, lifestyle or nutrition guidelines.
						</p>
						<form name="formAskQ" method="post" action="AskQ">
							<div class="group" >
								<label for="" style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >
									Ask your Question!
								</label><br>
								<label style="color:#893838;font-family: 'Gloria Hallelujah', cursive;font-size:19px;" >Comment</label>
								<textarea rows="7" class="form-control" name="question" id="question" placeholder="Describe Your Question..." style="color:black;font-family: 'Gloria Hallelujah', cursive;font-size:18px;" required></textarea>																						
								</div><br>
							<div class="group">
							 <input type="submit" value="Post" class="btn btn-blue btn-large float-center text-tall" style="padding: 7px 40px;float:right;background: #893838;" onclick="addParagraphs();event.preventDefault();document.getElementById('question').value = ''">                          	
							</div><br>
				</form>
					</div><hr>
				
					<div id="aftergroup">
							<%
					ArrayList<Comentariu> comentariu = Select.selectComentariu();
					for(Comentariu coment : comentariu){%>
					<div class='comment-wrap'>				
					<div class='photo'>
					<div class='avatar' style="background-image: url('https://ssl.gstatic.com/accounts/ui/avatar_2x.png')"></div></div>
					<div class='comment-block'>
					<div class='bottom-comment'>
					<div class='comment-date'>Written by: <%=Select.selectNume(coment.getId_utilizator()) %>
					</div>						
					</div><br><br>
					<p class='comment-text'><%=coment.getContinut() %></p><div class='bottom-comment'>
					<div class='comment-date'><%=DataParser.returnDate(coment.getData()) %></div>
					<%-- <%if("3".equals(session.getAttribute("id_util"))){ %> --%>
					<br><ul class='comment-actions'>
					<li style="color:#893838;font-size:22px" class='reply'>Reply</li></ul></div></div></div>					
					<div style="display:none">
    				<form id="commentForm" action="AskQ">
      				<textarea cols="37"  rows="37" name="comment" autofocus></textarea>
      				<button style="color:white;font-size:15px;background-color:#893838;border-radius:0.8em;width:40%" type="submit" name="insertReply" >Reply</button>
    				</form>
					</div><%}/* } */ %>	
				</div>	
            </div>
        </div>					            	
 </div>




<!-- <script>
function addParagraphs() {
	var b = $("#question").val();
if ($("p").length){
    target = $('p').last(); 
    var p2 = "<div class='comment-wrap'><div class='photo'><div class='avatar' style='background-image: url(&quot;https://ssl.gstatic.com/accounts/ui/avatar_2x.png&quot;)'></div></div><div class='comment-block'><div class='bottom-comment'><div class='comment-date'>Written by:</div>						</div><br><br><p class='comment-text'>"+b+"</p><div class='bottom-comment'><div class='comment-date'>Aug 24, 2014 @ 2:35 PM</div><ul class='comment-actions'><li class='reply'>Reply</li></ul></div></div></div>";
	 $("#aftergroup").append($(p2));
    }
    else{
 	    var c2 = "<div class='comment-wrap'><div class='photo'><div class='avatar' style='background-image: url(&quot;https://ssl.gstatic.com/accounts/ui/avatar_2x.png&quot;)'></div></div><div class='comment-block'><div class='bottom-comment'><div class='comment-date'>Written by:</div>						</div><br><br><p class='comment-text'>"+b+"</p><div class='bottom-comment'><div class='comment-date'>Aug 24, 2014 @ 2:35 PM</div><ul class='comment-actions'><li class='reply'>Reply</li></ul></div></div></div>";
	 $("#aftergroup").append($(c2));  
   }
}
</script> -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script  src="loginJS.js"></script>
	<script  src="flipCard.js"></script>
<script>

var Comment = {
    init: function() {
        $(".reply").bind('click', $.proxy(this.handleClick, this));
    },
    handleClick: function(evt) {
        var form = $('#commentForm').clone();
        $(evt.target).append(form);
    }   
};

$(function() {
    Comment.init();
});

</script>
<script>
document.getElementById("logout").onclick = function() {
    document.getElementById("formId").submit();
}
</script>
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
