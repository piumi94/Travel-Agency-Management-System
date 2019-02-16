<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
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
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=date] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

select {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  font-size: 15px;
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
  background-color:#2565ba;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 10%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: gray;
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

<script>
function validate(){
	
	  var mobile_no=document.forms["insurance"]["mobile"].value;
	  var email=document.forms["insurance"]["email"].value;
	  var city=document.forms["insurance"]["city"].value;
	  var insureType=document.forms["insurance"]["type"].value;
	  var noOfChildren=document.forms["insurance"]["children"].value;
	  var nameOnCard=document.forms["insurance"]["name"].value;
	  var creditNo=document.forms["insurance"]["creditno"].value;
	  var expireDate=document.forms["insurance"]["edate"].value;
	  
	 
	  if(mobile_no == ""){
		  alert("Please enter your mobile number");
		  return false;
	  }
	  
	  else if(isNaN(mobile_no)){
		  alert("Mobile number must be in digits only");
		  return false;
	  }
	 
	  else if(mobile_no.length != 10){
		  alert("Mobile number must be 10 digit long");
		  return false;
	  }
	  
	  else if(email == ""){
		  alert("Please enter your email address");
		  return false;
	  }
	 
	  else if(!email.includes("@")){
		  alert("Invalid email");
		  return false;
	  }
	  
	  else if(!email.includes(".com")){
		  alert("Invalid email");
		  return false;
	  }
	  
	  else if(city == ""){
		  alert("Please enter your current city");
		  return false;
	  }
	  
	  else if(insureType == ""){
		  alert("Select an insurance type");
		  return false;
	  }
	  
	  else if(noOfChildren == ""){
		  alert("Please choose the number of children");
		  return false;
	  }
	  
	  else if(nameOnCard == ""){
		  alert("Please enter your name on the card");
		  return false;
	  }
	  
	  else if(creditNo == ""){
		  alert("Please enter your credit card number");
		  return false;
	  }
	  
	  else if(creditNo.length != 16){
		  alert("Credit card number should be 16 digits long");
		  return false;
	  }
	  
	  else if(expireDate == ""){
		  alert("Please enter the expire date of your card");
		  return false;
	  }
	  
	  else{
		  alert("Successful");
		  return true;
	  }
	  
}

function demo(){
	document.getElementById("mobile").value="0713711771";
	document.getElementById("email").value="jaya123@gmail.com";
	document.getElementById("city").value="Kandy";
	document.getElementById("type").value="Family Travel";
	document.getElementById("children").value="2";
	document.getElementById("name").value="J.M.Dhanapala";
	document.getElementById("creditno").value="2222333344445555";
	document.getElementById("edate").value="";
}

</script>

</head>

<link rel="stylesheet" href="myHome.css">
<body>

<!-- Navigation Bar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-gray w3-wide w3-padding w3-card">
     <div class="w3-bar-item"><b>Theme Travels</b></div>
<!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
     <a href="MainHome.jsp" class="w3-bar-item w3-button">Home</a>
      <a href="AboutUs.jsp" class="w3-bar-item w3-button">About Us</a>
      <a href="Services.jsp" class="w3-bar-item w3-button">Services</a>
      <a href="Login.jsp" class="w3-bar-item w3-button">Login</a>
    </div>
  </div>
</div>
<!-- Header -->
<header class ="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="family.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>Theme Travel Insurance</b></span> <span class="w3-hide-small w3-text-light-grey"></span></h1>
  </div>
</header>

<h2>Update Your Details</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method ="post" name ="insurance" action ="UpdateDetails.jsp">
      <div class="row">
      <div class="col-50">
          
            <h3>Basic Information</h3>
            <div class="leftcol"><label for="start">NIC Number<font color="red">*</font></label></div>
            <input type="text" id="nic" name="nic" placeholder="948051036V">
            <div class="leftcol"><label for="start">Mobile<font color="red">*</font></label></div>
            <input type="text" id="mobile" name="mobile" placeholder="0123456789">
            <div class="leftcol"><label for="start">Email<font color="red">*</font></label></div>
            <input type="text" id="email" name="email" placeholder="jaya@example.com"> 
            <div class="leftcol"><label for="start">Current City<font color="red">*</font></label></div>
            <input type="text" id="city" name="city" placeholder="Kandy">
            
   
            <h3>Travel Information</h3>
            <div class="leftcol"><label for="start">Type of Travel<font color="red">*</font></label></div>
   		    <select id="type" name="type">
   		    <option value=""></option>
            <option value="Individual Travel">Individual Travel</option>
            <option value="Family Travel">Family Travel</option>
            <option value="Senior Citizen">Senior Citizen</option>
            <option value="Student Travel">Student Travel</option>
            </select>
            <div class="leftcol"><label for="start">No of Children<font color="red">*</font></label></div>
            <select id="children" name="children">
            <option value=""></option>
            <option value='0'>0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option> 
            <option value="9">9</option>
            <option value="10">10</option>   
            </select>
            
            
            <h3>Payment Details</h3>
            <label for="cards">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
           
            <div class="leftcol"><label for="start">Name on card<font color="red">*</font></label></div>
            <input type="text" id="name" name="name" placeholder="Jayantha Perera">
            <div class="leftcol"><label for="start">Credit Card No<font color="red">*</font></label></div>
            <input type="text" id="creditno" name="creditno" placeholder="1111222233334444">
            <div class="leftcol"><label for="start">Expire Date<font color="red">*</font></label></div>
            <input type="date" id="edate" name="edate" placeholder="dd/mm/yy">

           </div>
          </div>
          
		<p><font color="red">All fields with * symbol are mandatory</font></p>
        <input type="submit" value="Apply" class="btn" onclick="return validate()">
        <button value="Demo" formaction="Report.pdf" class="btn">Print</button>
        </form>
        <button value="Demo" onclick="demo();" class="btn">Demo</button>  
    </div>
  </div>
 </div>
 
<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
  <p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>

</body>
</html>
