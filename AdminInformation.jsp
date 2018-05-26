<%@ page import="views.Utilizator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html lang="en" >

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="challenges.css?v=1.9">
<style>
body,
html {
  width: 100%;
  height: 100%;
  overflow: hidden;
   background: linear-gradient(to bottom, #ffffff -6%, #000000 100%);
  font-family: "Varela Round", sans-serif;
}

</style>
</head>
<body>
<br><h1 style="color:white;"><img src="Logo1.png" width="15%" height="15%"></h1><hr><br>
<center><h1 style=" background-image: url(https://lazarangelov.academy/assets/img/png/program-workout-black-pattern.png);
width:60%;color:white;font-family: 'Gloria Hallelujah', cursive;font-size:50px;text-align:center;">Admin Informations</h1></center>
 
<%-- <%Utilizator admin = SelectAdminPage.selectAdmin(); %>
<table width="60%" style="margin-left:30%;font-size:28px;">
 <form name="updateAdmin" method="post" >
<tr>
<td>Id Admin</td>
<td><input type="text" name="idAdmin" value="<%=admin.getId_utilizator()%>" readonly></td>
</tr>
<tr>
<td>Type user</td>
<td><input type="text" name="userType" value="<%=admin.getId_tip_utilizator()%>" readonly></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" value="<%=admin.getEmail()%>"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="text" name="password" value="<%=admin.getParola()%>"></td>
</tr>
<tr>
<td>Adress</td>
<td><input type="text" name="adress" value="<%=admin.getAdresa()%>"></td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="city" value="<%=admin.getOras()%>"></td>
</tr>
<tr>
<td>Country</td>
<td><input type="text" name="country" value="<%=admin.getTara()%>"></td>
</tr>
<tr>
<td>Phone number</td>
<td><input type="text" name="phone" value="<%=admin.getNr_telefon()%>"></td> --%>
</tr>
<tr><td colspan="2" align="left"><input id="modifyAdmin" type="submit" class="btnFTicket" name="modifyAdmin" value="Modify" onclick="x()"></td></tr>
</form>
</table>


</body>
</html>