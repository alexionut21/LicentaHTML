<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en" >

<head>
  <title>EnjoyFest-MainPage</title>
  
  <style>
  body{
  background-color:black;
  }
.title{
color:white;
margin-top:40px;
margin-left:200px;
}
hr {
	height: 15px;
	border: 0;
	box-shadow: 0 20px 20px -20px #8c8b8b inset;
}

button {
    transform-style: preserve-3d;
}
button {
    border: none;
    background: white;
    color: red;
    padding: 20px;
    font-size: 18px;
    border-radius: 5px;
    position: relative;
    box-sizing: border-box;
    transition: all 500ms ease;
	cursor:pointer;
	margin-left:50%;
	box-shadow: 0px 0px 25px #fff;
	border-radius:0.5em;
}
button:after {
    top: -100%;
    left: 0px;
    width: 100%;
    padding: 20px 0;
    position: absolute;
    background: red;
    border-radius: 5px;
    content: 'Join Now';
    transform-origin: left bottom;
    transform: rotateX(90deg);
	color:white;
	box-shadow: 0px 0px 25px #fff;
	border-radius:0.5em;
}
button:hover {
	transform-origin: center bottom;
	transform: rotateX(-90deg) translateY(100%);
}

    </style>
</head>

<body>
<h1 style="color:white;">SmartTrainig</h1><br><br><hr>
<h1 class="title">Online Personal Training <img src="http://www.lazarangelov.com/wp-content/uploads/2015/12/best-value.png" alt="best-value" width="95" height="71" data-was-processed="true"></h1>
<br>
  <form method="post" action="Register.jsp">
  <button type="submit">Take your plan</button><br>
  </form>
<br><br>
<table width="100%" >
<tr>
  <td align="left" ><img src="trainer1.jpg" alt="Norway" style="width:70%;box-shadow: 0px 0px 25px #fff;border-radius:0.9em;margin-left:200px;"></td>
  <td align="left"  style="position:relative;"><h1 style="color:white;font-size:16px;">&#9989; PROGRAM PERSONALLY DESIGNED FOR YOU AND THE RESULTS YOU WOULD LIKE TO ACCOMPLISH</h1>
  <h1 style="color:white;font-size:16px;">&#9989; WELL ROUNDED WORKOUT ROUTINE DESIGNED SPECIFICALLY FOR YOUR GOALS</h1>
  <h1 style="color:white;font-size:16px;">&#9989; INCLUDES THE BEST COMBINATION OF EXERCISES, FREQUENCY, NUMBER OF REPS, NUMBER OF SETS AND REST TIME TO HELP REACH YOUR DESIRED GOAL</h1>
  <h1 style="color:white;font-size:16px;">&#9989; INCLUDES DIRECTION ON TYPE OF EXERCISE MOVE, RESISTANCE SIZE, FREQUENCY, NUMBER OF REPS, NUMBER OF SETS, AND REST TIME</h1></td>
</tr>
<table><br>
<table width="100%" >
<tr>
  <td align="left"><img src="nutrition.jpeg" alt="Norway" style="width:70%;box-shadow: 0px 0px 25px #fff;border-radius:0.9em;margin-left:200px;"></td>
    <td align="left" width="58%"><h1 style="color:white;font-size:16px;">&#9989; PERSONALIZED MEAL PLAN PREPARED ESPECIALLY FOR YOU BASED ON:</h1>
<p style="color:white;font-size:16px;">~YOUR BODY TYPE</p>
<p style="color:white;font-size:16px;">~YOUR LIFESTYLE</p>
<p style="color:white;font-size:16px;">~THE GOALS YOU WOULD LIKE TO ACCOMPLISH</p>
<p style="color:white;font-size:16px;">~THE FOODS YOU PREFER</p>
  <h1 style="color:white;font-size:16px;">&#9989; RECOMMENDED GROCERY LIST</h1>
  <h1 style="color:white;font-size:16px;">&#9989; RECOMMENDATIONS ON CALORIES AND PORTIONS</h1></td>
</tr>
<table><br><br><br>





</body>

</html>