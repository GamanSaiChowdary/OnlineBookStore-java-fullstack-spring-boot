<%@page import="com.gaman.demo.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>

        .blinking-text {
            animation: blink 1s infinite; /* Adjust the animation duration as needed */
        }
         .header-social-links {
            display: flex;
        }

.container {
    display: flex;
    justify-content: space-between;
    width: 80%;
  }
.welcome-box {
  background-color: #3498db; /* Background color */
  color: #fff; /* Text color */
  padding: 20px; /* Spacing inside the box */
  border-radius: 10px; /* Rounded corners */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Drop shadow */
  text-align: center; /* Center align text */
  font-size: 24px; /* Font size */
  font-family: Arial, sans-serif; /* Font family */
}

 

        .container {
            display: flex;
            justify-content: space-between;
            width: 80%; /* Adjusted width of the container */
        }

        .card {
            flex: 1; /* Each card takes equal width within the container */
            padding: 30px; /* Adjusted padding */
            border: 1px solid #ccc;
            border-radius: 10px; /* Increased border radius */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Increased box shadow */
            background-color: #fff;
            display:inline;
        }

        .left-card {
            background-color: #F0E68C;
        }

        .right-card {
            background-color: #ADD8E6;
        }
        .nested-card {
            flex: 1;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            background-color: #fff;
            margin-top: 10px;
        }
                .align-center {
    float: center;
  }
        
        .card {
            width: 300px; /* Set the desired width */
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Add styles to make it long */
        .long-card {
            height: 400px; /* Set the desired height for the long card */
            overflow: auto; /* Add scrollbars if content overflows the card */
        }

        /* Add your CSS styling here */
        #navbar {
            background-color: #333;
            color: white;
            padding: 10px;
        }

        #navbar input[type="text"] {
            padding: 5px;
            border: none;
            border-radius: 3px;
        }

        #navbar button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 3px;
            padding: 5px 10px;
            cursor: pointer;
        }     
     body {
            background-image: url('https://images5.alphacoders.com/394/thumb-1920-394862.jpg');
            background-size: cover; /* This makes the image cover the entire viewport */
            background-repeat: no-repeat; /* This prevents the image from repeating */
            background-attachment: fixed; /* This makes the background image fixed */
            /* You can adjust other styles as needed */
        }
    .large-img {
        width: 300px; /* Set the desired width */
        height: auto; /* Maintain aspect ratio */
    }
    
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0; }
            100% { opacity: 1; }
        }

        .blinking-text {
            animation: blink 1s infinite; /* Adjust the animation duration as needed */
        }
        .container {
    display: flex;
    justify-content: space-between;
    width: 80%;
  }

  .card {
    flex: 1;
    padding: 30px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    background-color: #fff;
    display: inline-block; /* Adjusted to make cards display inline */
    margin: 10px; /* Add some margin for spacing */
  }

  /* Add a class to align the nested card to the right */
  .align-right {
    float: right;
  }
  .text-red {
    color: red;
  }
 .form-group input[type="submit"] {
  background-color: green;
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  }
  
.form-group input[type="submit"]:hover {
		background-color: #0056b3;
}


</style>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Book store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/testimonials/b4.jpg" rel="icon">
  <link href="img/apple-touch-icon.png" rel="book-icon">

<!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: Jul 27 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>


    </style>
</head>

<body>

  <jsp:include page="usernavbar.jsp" />
  <!-- HTML -->
  
    <br>
    <br>
    <br>
    <br>
    <br>
        <br>
        <br>
<div class="welcome-box">
  <%User u = (User) session.getAttribute("email");%>
  <h1>Welcome, <%=u.getName() %></h1>
  <p>We're excited to have you here. Explore and discover all that we have to offer.</p>
</div>
  

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
        <br>
    <br>
<div>
    <!-- Rest of your content -->
    
</div>
    <br/>
    <br/>
    
<div class="container">
        <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img style="height:200px; width:150px;" src="/images/N1.jpg"/>
                
                <h3>Chicken Soup</h3>
                <h4>Jack Canfield</h4>
                <h5></h5>
                <p style="color: red;">Price: 400</p>
               <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                   -->
                
            </div>
          </center>
          
            
        
        <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img  style="height:200px; width:150px;" src="/images/N2.jpg"/>
                
                <h3>Men are for Mars</h3>
                <h4>John Gray</h4>
                <h5></h5>
                <p style="color: red;">Price: 400</p>
                <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                 -->
            </div>
          </center>
          <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img style="height:200px; width:150px;" src="/images/N3.jpg"/>
                
                <h3>Hungry for more</h3>
                <h4>Cristy teign</h4>
                <h5></h5>
                <p style="color: red;">Price: 400</p>
                <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                 -->
            </div>
          </center>
          </div>
            
          </div>
            
        </div>
       
    </div>
    <div class="container">
        <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img  style="height:200px; width:150px;" src="/images/F3.jpg"/>
                
                <h3>The War of the Worlds</h3>
                <h4>J K Rowling</h4>
                <h5></h5>
                <p style="color: red;">Price: 400</p>
                <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                 -->
            </div>
          </center>
          
            
        
        <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img  style="height:200px; width:150px;" src="/images/F2.jpg"/>
                
                <h3>Treasure Island</h3>
                <h4>J K Rowling</h4>
                <h5></h5>
                <p style="color: red;">Price: 400</p>
                <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                 -->
            </div>
          </center>
          <center>
        <div class="card left-card">
            <h2>Top recommended</h2>
            <!-- <p>Thank you for visiting. This is the content of the left card.</p> -->
            <div class="nested-card align-center">
                <img  style="height:200px; width:150px;" src="/images/F1.jpg"/>
                
                <h3>Harry Potter</h3>
                <h4>J K Rowling</h4>
                <h5></h5>
                <p  style="color: red;">Price: 400</p>
                <!-- <div class="form-group"><div  class="blinking-text"><span></span><input type="submit" value="BUYNOW" class="button" ></div></div>
                 -->
            </div>
          </center>
          </div>
            
          </div>
            
        </div>
       
    </div>


</body>
</html>