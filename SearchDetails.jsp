<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Travel Insurance</title>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    margin-left: auto
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

.btn {
  background-color:#2565ba;
  color: white;
  padding: 12px;
  margin: 20px 0;
  border: none;
  width: 10%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: gray;
}
</style>
</head>
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
<h1>Your Details</h1>

<%String nicNo =request.getParameter("search");
  
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance", "root", "Anu&Yumi@123");
		Statement st = (Statement) con.createStatement();
		String SQL = "SELECT * FROM insurance_details WHERE nicNo ='"+nicNo+"'";
		ResultSet rs = st.executeQuery(SQL);
		while(rs.next()){
%>

	<table id="customers">
		<tr>
			<td>Insurance ID</td>
			<td><%=rs.getString("insureId")%></td>
		</tr>
		
		<tr>
			<td>First Name</td>
			<td><%=rs.getString("fname")%></td>
		</tr>
		
		<tr>
			<td>Last Name</td>
			<td><%=rs.getString("lname")%></td>
		</tr>
		
		<tr>
			<td>Mobile Number</td>
			<td><%=rs.getString("mobileNo")%></td>
		</tr>
		
		<tr>
			<td>Email Address</td>
			<td><%=rs.getString("email")%></td>
		</tr>
		
		<tr>
			<td>Date of Birth</td>
			<td><%=rs.getString("dob")%></td>
		</tr>
		
		<tr>
			<td>NIC Number</td>
			<td><%=rs.getString("nicNo")%></td>
		</tr>
		
		<tr>
			<td>Current City</td>
			<td><%=rs.getString("city")%></td>
		</tr>
		
		<tr>
			<td>Type of Insurance</td>
			<td><%=rs.getString("insureType")%></td>
		</tr>
		
		<tr>
			<td>No of Children</td>
			<td><%=rs.getString("noOfChildren")%></td>
		</tr>
		
		<tr>
			<td>Name on Card</td>
			<td><%=rs.getString("nameOnCard")%></td>
		</tr>
		
		<tr>
			<td>Credit Card Number</td>
			<td><%=rs.getString("creditCardNo")%></td>
		</tr>
		
		<tr>
			<td>Expire Date</td>
			<td><%=rs.getString("expireDate")%></td>
		</tr>
	</table>
	
	<%
		}
	}
		catch(ClassNotFoundException ex){
			out.println("Error :"+ex);
		}
	%>
	<h3>If anything has to be changed click the button here....</h3>
	<a href="UpdateForm.jsp"><input value="Update" class="btn"></a>
	
<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
<p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>
	
	
</body>
</html>
