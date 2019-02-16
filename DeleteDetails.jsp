<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet.css">
<title>Travel Insurance</title>
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

<%String nicNo=request.getParameter("nic");

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "Anu&Yumi@123");
Statement st = con.createStatement();

int i = st.executeUpdate("INSERT INTO delete_details(nicNo) VALUES('"+nicNo+"')");
}

catch(Exception e){
System.out.print(e);
e.printStackTrace();
}
%>

<h4>Your request for cancellation has been received.</h4>
<h4>We will cancel your insurance within a week.</h4> 
<h4>Thank you for being with Theme Travels... :)</h4>

<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
<p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>

</body>
</html>