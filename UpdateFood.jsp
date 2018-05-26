<%@ page import="licenta.DBConnection"%>
<%@ page import="licenta.Select"%>
<%@ page import="views.Aliment"%>
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
  <title>Admin Food</title>
  
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
	
	<link rel="stylesheet" href="loginCSS.css?v=1.1">
	<link rel="stylesheet" href="menu.css?v=1.2">
	<link rel="stylesheet" href="quotes.css">  	

  
</head>

<body>
	<form method="post" action="logout" id='formId'>
  <div id="wrap">
  <div id="regbar">
    <div id="navthing">
      <h2><a href="#" id="logout">Logout</a></h2>
    </div>
  </div>
</div>  
</form>
	<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null && msg != "null") {
	%>
	<div style="margin-left:37%;font-size:30px;color:red;"><%=msg %></div>
<% }%>
<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:50%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;"> Update foods </h1></center>
 <div>
        <div class="container" style="margin-left:10%;width:780px;font-size:17px;background-color:transparent;">
			<div class="tooltable" style="background-color:transparent;" >
				<div class="row">
					<form method="post" action="UpdateFood">
							<table style="width:100%">
							<tr>
							<%String acelasi = (String) request.getAttribute("acelasi");
							if (acelasi != null && acelasi != "null") {
							%>
							<td style="font-size:30px;color:#893838"><%=acelasi %></td>
							<%} %>
							</tr>
							<% for(int i=2;i<8;i++){%>
							<tr>
							<td style="font-size:30px;color:#893838"><%=Select.selectDenumirePlanAlimentar(i) %></td>							
							</tr>
  							<tr>
  							<td style="font-size:30px;color:#893838">Name</td>
  							<td style="font-size:30px;color:#893838">Photo</td>
  							<td></td>
  							<td style="font-size:30px;color:#893838">Calories</td>
							</tr>
							<%
							
							ArrayList<Aliment> alim = Select.listAliment(i);
							for(Aliment aliment : alim){%>
							<tr>
							<td style="font-size:20px;"><input name="denumire" type="text" value="<%=aliment.getDenumire() %>" readonly><input type="hidden" name="idVechi" value="<%=aliment.getId() %>"></td>
							<td align="left" ><input type="image" name="photo" class="img-circle img-responsive" src="<%=aliment.getImagine()%>" id="trash" alt="Generic placeholder image" width="250" height="250" ></td>						
							<td style="font-size:20px;"><input type="text" name="calorie" value="<%=aliment.getCalorie() %>" >
							<td style="font-size:20px;"><input type="text" name="tipMasa" value="<%=aliment.getTip_masa() %>" readonly>		
							<td style="font-size:20px;"><select name="idNou">
							<option selected="selected" value="<%=aliment.getId() %>">
							<%=aliment.getDenumire() %>
							</option>
							<%ArrayList<Aliment> alim1 = Select.selectAllAliment();						
							for(Aliment aliment1 : alim1){%> 					
							 <option  value="<%=aliment1.getId() %>"><%=aliment1.getDenumire() %></option><%} %></select></td>
							<td><input type="submit" name="Submit" value="Update" style="font-size:20px;color:#893838"></td><%} %>
							</tr><%} %>
							</table>
						</form>
						</div>							
            </div>
        </div>
 </div>

<script>
document.getElementById("logout").onclick = function() {
    document.getElementById("formId").submit();
}
</script>
</body>

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
$(function(){
    $('#profile_image').change( function(e) {        
        var img = URL.createObjectURL(e.target.files[0]);
        $('#trash').attr('src', img);
    });
});
</script>



</html>