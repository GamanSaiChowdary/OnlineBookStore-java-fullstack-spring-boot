<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.List"%>
<%@page import="com.gaman.demo.model.Book"%>
<%@page import="com.gaman.demo.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
/* Reset some default styles for the entire page */
/* CSS for the card layout */
/* CSS for the card layout */


.container {
    display: flex;
    justify-content: space-between;
    width: 20%;
	color: red;
    height:250px;
  }

  .card {
  
    flex: 1;
    color:red;
    padding: 30px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    height:  200px;
   
    display: inline-block;
    margin-left: 150px;
    
    position: relative; /* Added to make the image and content position relative to the card */
    color: lightblue;
    margin-left: 250px;
    margin-rigth:100px;
  }

  .image-container {
    position: relative;
  }

  .image {
    width: 200px;
    height: 250px;
  }

  .overlay-content {
  	color: lightblue;
    position: absolute;
    height:200px;
    color:black;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    /* background-color: rgba(0, 0, 0, 0.5); */ /* Add a semi-transparent background */
/* Text color on the overlay */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    /* Hidden by default */
    /* transition: opacity 0.3s; */ /* Add a smooth fade effect */
  }

  /* .card:hover .overlay-content {
    opacity: 1; /* Show the overlay content on hover */
	color: lightblue;
  }  */
.buy-button, .cart-button {
    background-color: green;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    margin-right: 10px;
    position: absolute;
    bottom: 10px;
    right: 10px;
    z-index: 1; /* Ensure buttons are on top of the image */
}

.buy-button:hover, .cart-button:hover {
    background-color: #0056b3;
}



/* Additional styles for the book details */
.right-card h3 {
    font-size: 18px;
    margin: 0;
}

.right-card p {
    margin: 5px 0;
}

.buy-button, .cart-button {
    background-color: green;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    margin-right: 10px;
}

.buy-button:hover, .cart-button:hover {
    background-color: #0056b3;
}

.sub-subcategory {
    font-weight: bold;
    margin-left: 15px; /* Adjust the margin to create nested subcategories */
    color: #fff; /* Set the text color to white */
}

/* Style the sub-subcategory list */
.sub-subcategory-list {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

/* Style sub-subcategory list items */
.sub-subcategory-list li {
    margin-left: 15px;
}

/* Style sub-subcategory list links */
.sub-subcategory-list a {
    text-decoration: none;
    color: #fff; /* Set the text color to white */
    display: block;
}
body, html {
    margin: 0;
    padding: 0;
    height: 100%;
}

/* Style the sidebar */
.sidebar {
    width: 250px;
    height: 100%;
    border-right: 1px solid #000;
    position: fixed;
    top: 0;
    left: 0;
}

/* Style the category heading */
.category {
    background-color: #fff; /* Set a background color to differentiate it from subheadings */
    padding: 10px;
    font-weight: bold;
}

/* Style the category list */
.category-list {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

/* Style subcategory headings */
.subcategory {
    font-weight: bold;
    margin-left: 10px;
}

/* Style the subcategory list */
.subcategory-list {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

/* Style subcategory list items */
.subcategory-list li {
    margin-left: 15px;
}

/* Style subcategory list links (subheadings) */
.subcategory-list a {
    text-decoration: none;
    color: #fff;
    display: block;
}

/* Style subcategory list links on hover */
.subcategory-list a:hover {
    background-color: #fff; /* Add a background color on hover for better user feedback */
}

/* Style the main content area */
.content {
    margin-left: 250px;
    padding: 20px;
}

body, html {
    margin: 0;
    padding: 0;
    height: 100%;
}

/* Style the sidebar */
.sidebar {
    width: 250px; /* Adjust the width as needed */
    height: 100%;
    border-right: 1px solid #fff; /* Black border on the right side */
    position: fixed;
    top: 0;
    left: 0;
}
.a{
color:black;
background-color: lightblue;
}
.a:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}

/* Style the main content area */
.content {
    margin-left: 250px; /* Make sure it aligns with the sidebar width */
    padding: 20px; /* Add some padding to separate content from the border */
}

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
 <br>
    <br>
    <br>
    <br>
    <br>

<body>

  <jsp:include page="usernavbar.jsp" />
  <!-- HTML -->
 
    <br>
<!-- Card with book information -->
<%List<Book> list = (List<Book>)request.getAttribute("books");%>
<!-- <div class="container"> -->
<h2 style="margin-left: 270px; ">Search Results</h2>

<%for(Book b : list) {

 Blob blob = b.getImage();
    byte[] imageData = null;

    if (blob != null) {
        try (InputStream is = blob.getBinaryStream()) {
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[4096];
            int bytesRead;

            while ((bytesRead = is.read(buffer)) != -1) {
                baos.write(buffer, 0, bytesRead);
            }

            imageData = baos.toByteArray();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    %>

   <div class="card">
      <div class="image-container">
        <!-- <img class="image" src="images/F1.jpg" alt="Image"> -->
        <img class="image" src="data:image/jpeg;base64, <%= DatatypeConverter.printBase64Binary(imageData) %>" >
        <div class="overlay-content">
        <div>
          <h3>Book Name: <%=b.getName() %></h3>
          </div>
          <div>
          <h4>Author: <%=b.getAuthor() %></h4>
          <h4>Price: Rs. <%=b.getPrice() %></h4>

        </div>
        <div style="display: inline-block;">
        	<a href="/book/<%=b.getBookid() %>" ><button class="a">View Book</button></a>
        	<a href="/addToCart/<%=b.getBookid() %>" ><button class="a">+ Cart</button></a>
        </div>
        </div>
      </div>
    </div>
    <br/>
    <hr/>
    <br/>
    
    <%} %>
    <!-- <div class="card">
      <div class="image-container">
        <img class="image" src="images/F1.jpg" alt="Image">
        <div class="overlay-content">
        <div>
          <h2>Image Title</h2>
          </div>
          <div>
          <p>This is the content inside the image.</p>
        </div>
                <div style="display: inline-block;">
        	<a href="#"><button>Buy Now</button></a>
        	<a href="#"><button>+ Cart</button></a>
        </div>
        
        </div>
      </div>
    </div> -->
<!-- </div> -->

    
    
    
    
<div class="sidebar">
 <br>
    <br>
    <br>
    

        <div class="category">Categories</div>
         
        <ul class="category-list">
            <li>
                <span class="subcategory">Fiction</span>
                <ul class="subcategory-list">
                  <li>
                    <span class="sub-subcategory">Crime and Mystery</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">Murder on the Orient Express</a></li>
                        <li><a href="#">Gone Girl</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                </li>
                    <li>
                    <span class="sub-subcategory">Advanture</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">Treasure Island</a></li>
                        <li><a href="#">The Hobbit</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                </li>
                    <li>
                    <span class="sub-subcategory">Humour</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">My Family and Other Animals</a></li>
                        <li><a href="#">Charlie and the Chocolate Factory</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                </li>
                
                </ul>
            </li>
            <li>
                <span class="subcategory">Non Fiction</span>
                <ul class="subcategory-list">
                     <li>
                    <span class="sub-subcategory">Biography</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">The Diary of a Young Girl</a></li>
                        <li><a href="#">I Am Malala</a></li>
                 
                </li>
                     <li>
                    <span class="sub-subcategory">Science</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">The Voyage of the Beagle</a></li>
                        <li><a href="#">he Origin of Species</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                     <li>
                    <span class="sub-subcategory">Biography</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">bibliographies</a></li>
                        <li><a href="#">dictionaries</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                    <li>
                    <span class="sub-subcategory">History</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">The Guns of August</a></li>
                        <li><a href="#">The Diary of a Young Girl</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                     <li>
                    <span class="sub-subcategory">Reference Book</span>
                    <ul class="sub-subcategory-list">
                        <li><a href="#">Subcategory 1</a></li>
                        <li><a href="#">Subcategory 2</a></li>
                        <!-- Add more sub-subcategories and links here -->
                    </ul>
                </ul>
            </li>
        </ul>
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
 


</body>
</html>