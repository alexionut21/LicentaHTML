
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html lang="en" >

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="challenges.css?v=1.9">
  <style>
@import url("https://fonts.googleapis.com/css?family=Varela+Round");
html {
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: inherit;
  padding: 0;
  margin: 0;
  letter-spacing: 1.1px;
}

body,
html {
  width: 100%;
  height: 100%;
  overflow: hidden;
   background: linear-gradient(to bottom, #ffffff -6%, #000000 100%);
  font-family: "Varela Round", sans-serif;
}

.menu {
  display: flex;
  justify-content: center;
  align-items: center;
  max-width: 1000px;
  margin: 0 auto;
  height: 75vh;
  list-style: none;
}

.menu li {
  width: 700px;
  height: 50px;
  transition: background-position-x 0.9s linear;
  text-align: center;
}
.menu li a {
  font-size: 35px;
  color: white;
  text-decoration: none;
  transition: all 0.45s;
  text-shadow: 10px 10px 8px black;
}
.menu li:hover {
  background: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHN2ZyB2ZXJzaW9uPSIxLjEi%0D%0AIGlkPSJMYXllcl8xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhs%0D%0AaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4PSIwcHgiIHk9IjBweCIKCSB3aWR0%0D%0AaD0iMzkwcHgiIGhlaWdodD0iNTBweCIgdmlld0JveD0iMCAwIDM5MCA1MCIgZW5hYmxlLWJhY2tn%0D%0Acm91bmQ9Im5ldyAwIDAgMzkwIDUwIiB4bWw6c3BhY2U9InByZXNlcnZlIj4KPHBhdGggZmlsbD0i%0D%0Abm9uZSIgc3Ryb2tlPSIjZDk0ZjVjIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLW1pdGVybGlt%0D%0AaXQ9IjEwIiBkPSJNMCw0Ny41ODVjMCwwLDk3LjUsMCwxMzAsMAoJYzEzLjc1LDAsMjguNzQtMzgu%0D%0ANzc4LDQ2LjE2OC0xOS40MTZDMTkyLjY2OSw0Ni41LDI0My42MDMsNDcuNTg1LDI2MCw0Ny41ODVj%0D%0AMzEuODIxLDAsMTMwLDAsMTMwLDAiLz4KPC9zdmc+Cg==");
  -webkit-animation: line 2s;
          animation: line 2s;
}
.menu li:hover a {
  color: #d94f5c;
}
.menu li:not(:last-child) {
  margin-right: 30px;
}

@-webkit-keyframes line {
  0% {
    background-position-x: 390px;
  }
}

@keyframes line {
  0% {
    background-position-x: 390px;
  }
}

</style>
</head>
<body>
<!-- background: linear-gradient(to right, #fc354c, #0abfbc); -->
<br><h1 style="color:white;"><img src="Logo1.png" width="15%" height="15%"></h1><hr><br>
<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:60%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">Smart Training Admin</h1></center>
  <ul class="menu">
    <li><a href="AdminInf.html">Admin Informations</a></li>
    <li><a href="adminArticle.jsp">Insert Articol</a></li>
    <li><a href="adminProvocare.jsp">Insert Challenge</a></li>
    <li><a href="AskQ.jsp">Responde ASQ</a></li>
    <li><a href="InsertExercise.html">New Exercise</a></li>
	<li><a href="Clients.html">See Clients</a></li>
  </ul>

</body>
</html>
