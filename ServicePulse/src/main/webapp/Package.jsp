<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Packages</title>

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

.c {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.card {
  width: calc(33.33% - 40px); /* Three cards in a row */
  margin: 20px;
  padding: 5px;
  border: 5px solid black;
  border-radius: 5px;
  text-align: center;
  box-sizing: border-box;
}

.card img {
  max-width: 100%; /* Image fills the card width */
  height: auto;
  border-radius: 5px;
}

.card-text {
  font-weight: bold;
  margin-top: 10px;
}


/* Footer */
.footer {
  background-color: #1a1a2e;
  color: #fff;
  padding: 10px 0; /* Decreased footer height */
  bottom: 100;
  left: 0;
  width: 100%; 
  margin-top: 60px;
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

<div class="c">
  <div class="card">
    <img src="img/pack1.jpg" alt="Package 1">
    <div class="card-text">Pulse 1</div>
  </div>
  <div class="card">
    <img src="img/pack2.jpg" alt="Package 2">
    <div class="card-text">Pulse 2</div>
  </div>
  <div class="card">
    <img src="img/pack3.jpg" alt="Package 3">
    <div class="card-text">Pulse 3</div>
  </div>
  <div class="card">
    <img src="img/pack4.jpg" alt="Package 4">
    <div class="card-text">Pulse 4</div>
  </div>
  <div class="card">
    <img src="img/pack5.jpg" alt="Package 5">
    <div class="card-text">Pulse 5</div>
  </div>
  <div class="card">
    <img src="img/pack6.jpg" alt="Package 6">
    <div class="card-text">Pulse 6</div>
  </div>
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