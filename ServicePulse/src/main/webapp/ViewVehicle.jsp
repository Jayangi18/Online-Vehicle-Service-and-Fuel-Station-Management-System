<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="Vehicle.VehicleDao" %>
<%@ page import="Model.VehicleModel" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ServicePulse</title>

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

/* Table CSS */
table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f1f1f1;
}

th, td {
  transition: background-color 0.3s ease;
}

/* Footer */
.footer {
  background-color: #1a1a2e;
  color: #fff;
  padding: 20px 0;
  bottom: 100;
  left: 0;
  width: 100%;
  margin-top: 65px;
  position: fixed;
  bottom: 0;
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

<% VehicleDao retrieve = new VehicleDao(); 
   List<VehicleModel> list = retrieve.ViewVehicleServlet(); %>
<table>
    <thead>
        <tr>
            <th>Vehicle Id</th>
            <th>Owner Name</th>
            <th>Vehicle Type</th>
            <th>Model</th>
            <th>Vin</th>
            <th>License Plate</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    <% for(VehicleModel i : list) { %>
        <tr>
            <td><%= i.getVehicleId() %></td>
            <td><%= i.getOwnerName() %></td>
            <td><%= i.getVehicleType() %></td>
            <td><%= i.getModel() %></td>
            <td><%= i.getVin() %></td>
            <td><%= i.getLicensePlate() %></td>
            <td>
                <button type="button" onclick="confirmEdit('<%= i.getVehicleId() %>')">Edit</button>
                <button type="button" onclick="confirmDelete('<%= i.getVehicleId() %>')">Delete</button>
            </td>
        </tr>
    <% } %>
    </tbody>
</table>

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

<script>
function confirmDelete(vehicleId) {
  if (confirm("Are you sure you want to delete this vehicle?")) {
    window.location.href = 'DeleteVehicleServlet?vehicleId=' + vehicleId;
  }
}

function confirmEdit(vehicleId) {
  if (confirm("Are you sure you want to edit this vehicle?")) {
    window.location.href = 'EditVehicleServlet?vehicleId=' + vehicleId;
  }
}
</script>

</body>
</html>
