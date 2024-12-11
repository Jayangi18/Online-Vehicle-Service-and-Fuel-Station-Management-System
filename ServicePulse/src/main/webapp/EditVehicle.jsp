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

.move-text{
	 
    margin-top: 5px; 
    margin-right: 520px;
}

.moved-text{
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



/* Footer */
.footer {
    background-color: #1a1a2e;
    color: #fff;
    padding: 20px 0; /* Decrease padding */
    bottom: 100; /* Place at the bottom */
    left: 0;
    width: 100%;
    margin-top: 65px;
   /* position: fixed;*/
    bottom: 0;
}


.footer h5 {
    color: #fff;
    font-size: 18px; /* Decrease font size */
    font-weight: 600;
    margin-bottom: 10px; /* Decrease margin */
}

.footer ul {
    list-style: none;
    padding-left: 0;
}

.footer ul li {
    margin-bottom: 5px; /* Decrease margin */
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
    padding-top: 0.5rem; /* Decrease padding */
    padding-bottom: 0.5rem; /* Decrease padding */
}

.footer .text-center {
    text-align: center;
}

.footer .copy {
    text-align: center;
    margin-top: 20px;
}

.footer .contact{
	margin-left:200px;
}


.footer .about{
	margin-left:1000px;
	margin-top:-130px;
}

/* Form */
    .form {
        width: 50%;
        margin: 0 auto;
        margin-top: 50px;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    .form h1 {
        margin-bottom: 20px;
    }

    .form-field {
        margin-bottom: 15px;
    }

    .form-field label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .form-field input[type="text"],
    .form-field input[type="password"],
    .form-field input[type="email"],
    .form-field input[type="number"],
    .form-field select {
        width: calc(100% - 10px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .form-field select {
        width: 100%;
    }

    .form-field input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    .form-field input[type="submit"]:hover {
        background-color: #555;
    }

    .form-field small {
        color: red;
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
  <div class="search-container">
    <form action="/search" method="get">
      <input type="text" placeholder="Search..." name="search">
      <button type="submit">Search</button>
    </form>
  </div>
</div>

	<form id="Vehicle" class="form" method="post" action="<%=request.getContextPath()%>/UpdateVehicleServlet" onsubmit="return validateForm()">
    	<center><h1><b>Vehicle Information</b></h1></center>
    	
        	<div class="form-field">
            	<input type ="hidden" name="vehicleId" id="vehicleId" value = "<%=request.getAttribute("vehicleId")%>" autocomplete="off">
                <small></small>
            </div>
            <div class="form-field">
            	<label for="ownerName">Owner Name:</label>
                	<input type="text" name="ownerName" id="ownerName" value = "<%=request.getAttribute("ownerName")%>" autocomplete="off">
                    <small id="ownerName-error" style="color: red;"></small>
                </div>
            <div class="form-field">
            	<label for="vehicleType">Vehicle Type:</label>
                <select name="vehicleType" id="vehicleType">
            		<option value="Default" <%= "Default".equals(request.getAttribute("vehicleType")) ? "selected" : "" %>>Please select vehicle type</option>
            		<option value="Car" <%= "Car".equals(request.getAttribute("vehicleType")) ? "selected" : "" %>>Car</option>
            		<option value="Truck" <%= "Truck".equals(request.getAttribute("vehicleType")) ? "selected" : "" %>>Truck</option>
            		<option value="Motorcycle" <%= "Motorcycle".equals(request.getAttribute("vehicleType")) ? "selected" : "" %>>Motorcycle</option>
            	</select>
               <small id="vehicleType-error" style="color: red;"></small>
            </div>
            
            <div class="form-field">
            	<label for="model">Model:</label>
                <input type="text" name="model" id="model" value = "<%=request.getAttribute("model")%>" autocomplete="off">
                <small id="model-error" style="color: red;"></small>
           	</div>
            <div class="form-field">
            	<label for="vin">VIN:</label>
            	<input type="text" name="vin" id="vin" value = "<%=request.getAttribute("vin")%>" autocomplete="off">
              	<small id="vin-error" style="color: red;"></small>
           	</div>
            <div class="form-field">
            	<label for="licensePlate">License Plate:</label>
                <input type="text" name="licensePlate" id="licensePlate" value = "<%=request.getAttribute("licensePlate")%>" autocomplete="off">
                <small id="licensePlate-error" style="color: red;"></small>
            </div>
                           
                   
            <div class="form-field">
            	<input type="submit" class="btn" value="Edit VehicleInfo">
            </div>
      </form>
      
      
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
    function validateForm() {
        var errors = [];

        var ownerName = document.getElementById("ownerName").value;
        var vehicleType = document.getElementById("vehicleType").value;
        var model = document.getElementById("model").value;
        var vin = document.getElementById("vin").value;
        var licensePlate = document.getElementById("licensePlate").value;

        var namePattern = /^[a-zA-Z\s]+$/; // Regular expression for letters only

        if (ownerName.trim() === "" || !namePattern.test(ownerName)) {
            errors.push("Please enter a valid owner name (Letters Only)");
            document.getElementById("ownerName-error").innerHTML = "Please enter a valid owner name (Letters Only)";
        } else {
            document.getElementById("ownerName-error").innerHTML = "";
        }

        if (vehicleType === "Default") {
            errors.push("Please select vehicle type");
            document.getElementById("vehicleType-error").innerHTML = "Please select vehicle type";
        } else {
            document.getElementById("vehicleType-error").innerHTML = "";
        }

        if (model.trim() === "" || !namePattern.test(model)) {
            errors.push("Please enter a valid model (Letters Only)");
            document.getElementById("model-error").innerHTML = "Please enter a valid model (Letters Only)";
        } else {
            document.getElementById("model-error").innerHTML = "";
        }

        if (vin.trim() === "") {
            errors.push("Please enter VIN");
            document.getElementById("vin-error").innerHTML = "Please enter VIN";
        } else {
            document.getElementById("vin-error").innerHTML = "";
        }

        if (licensePlate.trim() === "") {
            errors.push("Please enter license plate");
            document.getElementById("licensePlate-error").innerHTML = "Please enter license plate";
        } else {
            document.getElementById("licensePlate-error").innerHTML = "";
        }

        // Display errors
        var errorContainer = document.getElementById("error-container");
        if (errors.length > 0) {
            return false;
        } else {
            return true;
        }
    }
</script>

</body>
</html>
