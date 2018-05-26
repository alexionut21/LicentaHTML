<%@ page import="java.util.ArrayList"%>
<%@ page import="licenta.quotes"%>
<%@ page import="licenta.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<!DOCTYPE html>
<html lang="en" >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
  background-color:grey;
}

* {
  box-sizing: border-box;
}
--Update--
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color:red;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: red;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn{
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container_update {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: grey;
    padding-top: 50px;
	opacity:1;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
	box-shadow: 10px 15px black;
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
--Payment--
.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -14px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 0px 0px 55px 0px;
  border: 1px solid lightgrey;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #d6a59e;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #d86d5d;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body>

<h1 style="color:white;">SmartTrainig</h1><hr>
<h1 class="title">Online Personal Training <img src="http://www.lazarangelov.com/wp-content/uploads/2015/12/best-value.png" alt="best-value" width="95" height="71" data-was-processed="true"></h1>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <!--Payment-->
  <div class="modal-content">
<div class="row">
  <div class="col-85">
    <div class="container">
      <form  method="post" action="/action_page.php">
        <div class="row">
          <div class="col-50">
            <h3 style="color:red;">Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
		 <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" style="background-color: #d6a59e;"class="cancelbtn">Pay and take your plan</button>
     <!-- </form>-->
    </div>
  </div>
</div>
</div>
</div>


<div class="modal-content">
    <div class="container_update">
      <h1>Update Your Information and Take Another Personalized Plan</h1>
      <p>Please fill in this form to update your personal informations</p>
      <hr>
	  <center><table width="100%" style="font-size:20px">
	  <tr><td><label for="obiectiv"><b>Objective</b></label>
	  <select name="obiectiv">
	  <option value="lose_weight">Lose Weight</option>
	  <option value="gain_muscle">Gain Muscle</option>
	  </select></td>
	  <td>
      <label for="height"><b>Height</b></label>
      <input type="number" placeholder="Enter Height" name="height" required></td>
      <td>
      <label for="weight "><b>Weight</b></label>
      <input type="number" placeholder="Enter Weight" name="weight " required></td>
      </tr><tr colspan="2"></tr><tr colspan="2"></tr><tr colspan="2"></tr>
	  <tr><td>
	  <label for="tip_somatic "><b>Somatic Type</b></label>
	  <select name="tip_somatic">
	  <option value="Ectomorf">Ectomorf</option>
	  <option value="Ectomorf">Ectomorf</option>
	  <option value="endomorf">endomorf</option>
	  </select></td>
	  <td><label for="nivel_stres"><b>Stress Level</b></label>
	  <select name="nivel_stres">
	  <option value="1-4">1-4</option>
	  <option value="5-8">5-8</option>
	  <option value="9-10">9-10</option>
	  </select></td>
	  <td>
	  <label for="stil_viata"><b>Lifestyle</b></label>
	  <select name="stil_viata">
	  <option value="sedentary">Sedentary</option>
	  <option value="moderatly">Moderatly</option>
	  <option value="active">Active</option>
	  </select></td></tr><tr colspan="2"></tr><tr colspan="2"></tr><tr colspan="2"></tr>
	  <tr><td>
      <label for="sanatate"><b>Do you have any health problems?</b></label>
      <input type="radio" value="YES" name="sanatate" required>YES<br>
	  <input type="radio" value="NO" name="sanatate" required>NO</td>
      <td><label for="operatii"><b>Have you ever had surgery?</b></label>
      <input type="radio" value="YES" name="operatii" required>YES<br>
	  <input type="radio" value="NO" name="operatii" required>NO</td>
       <td><label for="boala"><b>Are you currently treated for any disease?</b></label>
      <input type="radio" value="YES" name="boala" required>YES<br>
	  <input type="radio" value="NO" name="boala" required>NO</td>
	  <td> <label for="cardiac"><b>Any Heart disease?</b></label>
      <input type="radio" value="YES" name="cardiac" required>YES<br>
	  <input type="radio" value="NO" name="cardiac" required>NO</td></tr><tr colspan="2"></tr><tr colspan="2"></tr><tr colspan="2"></tr>
	  </table></center><br><br>
      <div class="clearfix">
		<center><button onclick="document.getElementById('id01').style.display='block'"  class="btn" >Update Personal Information</button></center>
      </div>
    </div>
	</div>
  </form>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>
