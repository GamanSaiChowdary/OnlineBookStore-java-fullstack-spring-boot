<%@page import="java.util.Optional"%>
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
.card {
  
    flex: 1;
    
    color:red;
    padding: 30px;
    border: 1px solid #ccc;
    border-radius: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    height:  200px;
   
    display: inline-block;
    margin-left: 150px;
    
    position: relative; /* Added to make the image and content position relative to the card */
    color: lightblue;
    margin-left: 20px;
    margin-rigth:100px;
    background-color: grey;
    display:flex;
  }
  .image-container {
            flex: 1; /* Make the image container take up the left side */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .image {
        height:500px;
        width:400px;
            /* max-width: 100%;
            max-height: 100%; */
            object-fit: cover;
        }

        .overlay-content {
            flex: 1; /* Make the content container take up the right side */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: black;
            font-style:italic;
            padding: 20px;
        }

        h3, h4 {
            margin: 5px;
        }
        .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
    }

    .form-group input,
    .form-group textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }

    .form-group input[type="file"] {
      border: none;
      padding: 0;
    }

    .form-group input[type="submit"] {
      background-color: #FAD02E; /* Yellow background for Buy Now button */
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 30px; /* Curved border */
      cursor: pointer;
    }

    .form-group input[type="submit"].cart-button {
      background-color: #FFA500; /* Orange background for Cart button */
    }

    .form-group input[type="submit"]:hover {
      background-color: #FFD700; /* Lighter yellow on hover for Buy Now button */
    }

    .form-group input[type="submit"].cart-button:hover {
      background-color: #FF8C00; /* Lighter orange on hover for Cart button */
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
<%Book b = (Book)request.getAttribute("book");%>
<!-- <div class="container"> -->


<%
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
            <h2><%=b.getName() %></h2>
            <br>
            <h5>By <%=b.getAuthor() %></h5>

            <h5>Published in <%=b.getPublish() %></h5>
            <h5><%=b.getGenre() %></h5>
            <h5>Rating: <%=b.getRating() %> (<%=b.getPeopleRated() %>)</h5>
            <%-- <h5>Purchases: <%=b.getPurchases() %></h5> --%>
            <br>
            <h6><%=b.getDescription() %></h6>
            <br>
            <h5 style="text-align: left;">Rs. <%=b.getPrice() %></h5>
            <br>
            <div style="display: inline-block;">
                <div class="form-group">
                <form action="/booking" method="get">
        			<input type="submit" value="Buy Now" class="curved-button">
        		</form>
      </div>

      <!-- Cart button with orange background -->
      <form action="/addToCart/<%=b.getBookid() %>" method="get">
      <div class="form-group">
        <input type="submit" value="Cart" class="curved-button cart-button">
      </div>
      </form>
            </div>
        </div>
    </div>

    <br/>

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

    
    
    
    

    
  


 


</body>
</html>