<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Travel Insurance</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="StyleSheet.css">
<body>

<!-- Navigation Bar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-gray w3-wide w3-padding w3-card">
    <div class="w3-bar-item"><b>Theme Travel Agency</b></div>
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

  <!-- Travel Package Section -->
<div class = "w3-row-padding">
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">TRAVEL INSURANCE PLANS</h3>
    <p>Travelling can be a beautiful experience. But it can also bring lots of risks because of the less awareness about planning. 
       Although you may not be able to control external factors that might cause disruptions in your travel plans, you can definitely choose to opt for travel insurance from Theme Travel Insurance to help you face any financial setbacks that might occur. 
       This way you can travel overseas with your loved ones keeping all your worries aside.
    </p>
  </div>

    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="download.jpg" alt="John" style="width:100%">
      <h3>Individual Travel Insurance</h3>
      <p>Travelling abroad to a foreign land alone can cause a lot of risk. 
         Medical emergencies, losses, and delays can be expensive and cause great inconvenience to you. 
         Are you covered?</p>
      <p><a href="ReadMoreIndi.jsp"><button class="w3-button w3-light-grey w3-block">Read More</button></a></p> 
      <p><a href="InsuranceForm.jsp"><button class="w3-button w3-light-grey w3-block">Buy Online</button></a></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="family2.jpg" alt="Jane" style="width:90%">
      <h3>Family Travel Insurance</h3>
      <p>A hundred things can go wrong when you travel. 
         Something that's an inconvenience at home can ruin your holiday when you're abroad. 
         Is your family covered?</p>
      <p><a href="ReadMoreFamily.jsp"><button class="w3-button w3-light-grey w3-block">Read More</button></a></p> 
      <p><a href="InsuranceForm.jsp"><button class="w3-button w3-light-grey w3-block">Buy Online</button></a></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="senior_traveling.png" alt="Mike" style="width:93%">
      <h3>Senior Citizen Travel</h3>
      <p>Taking a holiday abroad in your golden years is a dream for many. 
         But little inconveniences and medical problems can destroy your enjoyment and peace.
         Are you covered?</p>
      <p><a href="ReadMoreSenior.jsp"><button class="w3-button w3-light-grey w3-block">Read More</button></a></p>
      <p><a href="InsuranceForm.jsp"><button class="w3-button w3-light-grey w3-block">Buy Online</button></a></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="student.jpg" alt="Dan" style="width:90%">
      <h3>Student Travel Insurance</h3>
      <p>When you go to study abroad, you want a solid support system to take care 
         of any trouble coming for you. If you are aware about your education you will not want any trouble. 
         Are you covered?</p>
      <p><a href="ReadMoreStudent.jsp"><button class="w3-button w3-light-grey w3-block">Read More</button></a></p>
      <p><a href="InsuranceForm.jsp"><button class="w3-button w3-light-grey w3-block">Buy Online</button></a></p>
    </div>
</div>

 <!-- Contact Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contact</h3>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND MESSAGE
      </button>
    </form>
  </div>
</div>
        
<!-- Footer -->
<footer class="w3-center w3-gray w3-padding-16">
  <p>Copyright@THEME TRAVELS, 2018-All rights Reserved</p>
</footer>

</body>
</html>
