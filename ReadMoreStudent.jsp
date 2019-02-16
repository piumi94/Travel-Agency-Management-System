<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="StyleSheet.css">
<title>Insert title here</title>
</head>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: gray;
    color: white;
}
</style>
</head>
<body>

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
<header class ="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="student.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>Student Travel Insurance</b></span> <span class="w3-hide-small w3-text-light-grey"></span></h1>
  </div>
</header>


<h2>Student Travel Insurance Plan</h2>

<table id="customers">
  <tr>
    <th>Coverage</th>
    <th>Standard</th>
    <th>Silver</th>
    <th>Gold</th>
  </tr>
  <tr>
    <td>Medical Expenses</td>
    <td>$50,000</td>
    <td>$100,000</td>
    <td>$200,000</td>
  </tr>
  <tr>
    <td>Tuition Fee</td>
    <td>$10,000</td>
    <td>$10,000</td>
    <td>$10,000</td>
  </tr>
  <tr>
    <td>Personal Accidents</td>
    <td>$50,000</td>
    <td>$50,000</td>
    <td>$50,000</td>
  </tr>
  <tr>
    <td>Loss of Baggage(Checked)</td>
    <td>$1000</td>
    <td>$1000</td>
    <td>$1000</td>
  </tr>
  <tr>
    <td>Family Visit</td>
    <td>$7,500</td>
    <td>$7,500</td>
    <td>$7,500</td>
  </tr>
  <tr>
    <td>Accident to Sponsor</td>
    <td>$10,000</td>
    <td>$10,000</td>
    <td>$10,000 for either</td>
  </tr>
  <tr>
    <td>Personal Liability</td>
    <td>$10,000</td>
    <td>$10,000</td>
    <td>$10,000</td>
  </tr>
</table>

<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
  <p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>


</body>
</html>