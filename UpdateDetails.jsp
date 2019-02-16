<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet.css">
</head>
<body>

<!-- Navigation Bar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-gray w3-wide w3-padding w3-card">
     <div class="w3-bar-item"><b>Theme Travels</b></div>
<!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#home" class="w3-bar-item w3-button">Home</a>
      <a href="about.jsp" class="w3-bar-item w3-button">About Us</a>
      <a href="Services.jsp" class="w3-bar-item w3-button">Services</a>
      <a href="premiumCal.jsp" class="w3-bar-item w3-button">Login</a>
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

<%String nicNo=request.getParameter("nic");
  String mobile_no=request.getParameter("mobile");
  String email=request.getParameter("email");
  String city=request.getParameter("city");
  String insureType=request.getParameter("type");
  String noOfChildren=request.getParameter("children");
  String nameOnCard=request.getParameter("name");
  String creditCardNo=request.getParameter("creditno");
  String expireDate=request.getParameter("edate");

  try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "Anu&Yumi@123");
	  Statement st = con.createStatement();

	  int i = st.executeUpdate("UPDATE insurance_details SET mobileNo='"+mobile_no+"', email='"+email+"', city='"+city+"', insureType='"+insureType+"', noOfChildren='"+noOfChildren+"', nameOnCard='"+nameOnCard+"', creditCardNo='"+creditCardNo+"', expireDate='"+expireDate+"' WHERE nicNo ='"+nicNo+"'");
	  }

	  catch(Exception e){
	  System.out.print(e);
	  e.printStackTrace();
	  }
	  %>
	  
<h3>Your details have been updated</h3>

<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
  <p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>

</body>
</html>
