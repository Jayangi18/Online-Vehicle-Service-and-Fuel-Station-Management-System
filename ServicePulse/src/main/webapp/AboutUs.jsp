<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
/*header*/
.header {
  background-color: #273444;
  color: white;
  padding: 20px;
  display: flex;
  height:80px;
}

.logo {
  flex: 1;
  margin-top: 5px;
}

.logo img {
  width: 100px; /* Set the width of the logo */
  height: 80px; /* Maintain aspect ratio */
  margin-left:30px;
}

.title {
  flex: 3;
  text-align: center;
}

.move-text {
  margin-top: 5px; 
  margin-right: 520px;
}

.moved-text {
  margin-top: 10px; 
  margin-right: 250px;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.search-container {
  float: right;
}

.search-container input[type=text] {
  padding: 6px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 16px;
  border: none;
}

.search-container button {
  padding: 6px 10px;
  margin-top: 8px;
  margin-bottom: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 14px;
  border: none;
  cursor: pointer;
}

@media screen and (max-width: 600px) {
  .navbar a, .search-container {
    float: none;
    display: block;
    text-align: left;
  }
  
  .search-container {
    margin-top: 8px;
  }
}

body {
  background-image: url('img/blurred-car-repair-shop.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.intro-container {
  width: 80%; /* Adjusted width */
  border: 5px solid #191970;
  border-radius: 25px;
  padding: 10px;
  margin: 40px auto; /* Centering the container */
}

.intro {
  font-size: 20px;
  line-height: 1.6;
  text-align: justify;
  font-weight:700;
  color: black; /* Change font color */
}

/* Footer */
.footer {
  background-color: #1a1a2e;
  color: #fff;
  padding: 10px 0; /* Decreased footer height */
  bottom: 0;
  left: 0;
  width: 100%; 
}

.footer h5 {
  color: #fff;
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 10px;
}

.footer ul {
  list-style: none;
  padding-left: 0;
}

.footer ul li {
  margin-bottom: 5px;
}

.footer a {
  color: #fff;
  text-decoration: none;
}

.footer a:hover {
  color: #ccc;
}

.footer p {
  margin-bottom: 0;
}

.footer .py-3 {
  padding-top: 0.5rem;
  padding-bottom: 0.5rem;
}

.footer .text-center {
  text-align: center;
}

.footer .copy {
  text-align: center;
  margin-top: 20px;
}

.footer .contact {
  margin-left: 200px;
}

.footer .about {
  margin-left: 1000px;
  margin-top: -130px;
}
</style>
</head>
<body>

<%--header--%>
<div class="header">
  <div class="logo">
    <img src="img/logo.png" alt="ServicePulse Logo">
  </div>
  <div class="title">
    <h1 class="move-text">ServicePulse</h1>
    <h2 class="moved-text">Welcome To ServicePulse! Online Vehicle and Fuel Management System</h2>
  </div>
</div>

<div class="navbar">
  <a href="HomeScreen.jsp">Home</a>
  <a href="AboutUs.jsp">About Us</a>
  <a href="branches.jsp">Branches</a>
  <a href="Package.jsp">Packages</a>
  
</div>

<div class="intro-container">
<h1 align="center">About Us</h1> 
<p class="intro">
    Our Online Vehicle Service and Fuel Management System makes managing vehicles and fuel usage easier for our company. It helps with vehicle maintenance, tracks fuel efficiently, and improves fleet management.

    Employees and fleet managers can use our system to keep an eye on vehicle health, schedule maintenance, and track fuel usage. Real-time data helps users make smart decisions, save money, and stay compliant with regulations.

    Our platform also encourages teamwork among employees, service providers, and industry experts. It's a place to share knowledge, experiences, and learn about the latest in vehicle maintenance and fuel management.

    Personalization is important to us. Whether you're in charge of one vehicle or many, our system adjusts to your needs. You can set up custom service reminders and get reports tailored to your preferences.

    Join us in improving how we manage vehicles and fuel internally. Enjoy the convenience, efficiency, and peace of mind our system brings.
</p>
</div>


<!-- Footer -->               
<footer class="footer">
  <div class="container">
    <div class="contact"> 
      <h5>Contact Us</h5>
      <ul class="list-unstyled">
        <li><a href="#">Email: info@servicepulse.com</a></li>
        <li><a href="#">Phone: 011-2222211</a></li>
        <li><a href="#">Address: No.34, Flower Road, Colombo 5</a></li>
      </ul>
    </div>
    <div class="about"> 
      <h5>About Us</h5>
      <ul class="list-unstyled">
        <li><a href="#">Company Overview</a></li>
        <li><a href="#">Our Team</a></li>
        <li><a href="#">Privacy Policy</a></li>
      </ul>
    </div>
  </div>
  <div class="copy">
    <p>&copy; 2023 ServicePulse. All rights reserved.</p>
  </div>
</footer>
</body>
</html>
