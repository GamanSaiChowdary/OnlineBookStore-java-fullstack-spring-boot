<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="styles.css">
  <style>
  .search-bar {
            display: flex;
            align-items: center;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
        }

        .search-input {
            flex: 1;
            border: none;
            padding: 10px;
            font-size: 16px;
            outline: none;
        }

        .search-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            cursor: pointer;
        }
  
    li img {
  width: 30px;
  height: 30px;
  border-radius: 50%; /* Make it circular */
}
li.profile-dropdown {
  position: relative;
}
li.profile {
  position: relative;
}

.fontawesomeicon::before {
    display: inline-block;
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
 }

.Bars::before {
   font: var(--fa-font-solid);
    content: ' \f0c9';
}
ul.dropdown-menu {
  display: none;
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

li.profile-dropdown:hover ul.dropdown-menu {
  display: block;
}
li.cart:hover {
  display: block;
}

/* Style dropdown menu items */
ul.dropdown-menu li {
  padding: 10px;
}

/* Add hover effect for dropdown items if needed */
ul.dropdown-menu li:hover {
  background-color: #f0f0f0;
}
  
 </style>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Book Store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/b2.jpg" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="book-icon">

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
<body>


<!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="/userhome" class="logo d-flex align-items-center  me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <i class="bi bi-book"></i>
        <h1>Online Book Store</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/userhome">Home</a></li>
    
         
         
          <li class="dropdown"><a href="#" class="active"><span>Browse Books</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
             
              
              <li class="dropdown"><a href="#"><span>Fiction</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="#"></a></li>
                  <li><a href="/book-crime-and-mystery">Crime & Mystery</a></li>
                  <li><a href="/book-adventure">Adventure</a></li>
                  <li><a href="/book-humour">Humour</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>Non Fiction</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="/book-science-and-history">Science & History</a></li>
                  <li><a href="/book-biography-and-autobiography">Biography & Autobiography</a></li>
                  <li><a href="#">Reference Books</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="usercontact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->
       <div class="search-bar">
       <form action="/search" method="post">
        <input class="search-input" type="text" name="key" placeholder="Search...">
        <button class="search-button">Search</button>
        </form>
    </div>

            <div>
            <li class="profile-dropdown">
              
             <img src="images/profileicon.jpg" alt="Profile Icon">
             
      <ul class="dropdown-menu">
        <li><a href="/userprofile">Profile</a></li>
        <li><a href="/userorders">My Orders</a></li>
        <li><a href="/logout">Logout</a></li>
      </ul>
    </li>
   </div>
            <div>
            <li class="profile">
            <a href="/usercart"><img src="images/g2.png" alt="Profile Icon"></a>
            </div>
      <div li.profile-dropdown:hover ul.dropdown-menu {
  display: block;
}class="header-social-links">
        
        <a href="https://www.linkedin.com/pulse/online-bookstore-gaman-sai-chowdary-garapati%3FtrackingId=eRG9Ho9woRCPE0CRcGrZ2g%253D%253D/?trackingId=eRG9Ho9woRCPE0CRcGrZ2g%3D%3D" target="_blank" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
        
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
        
	  
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  
    <footer>
      <!-- Your footer content here -->
      
			
    </div>
    </footer><!-- End Footer -->
  
    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  
    <div id="preloader"></div>
  
    <!-- Vendor JS Files -->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/aos/aos.js"></script>
    <script src="vendor/glightbox/js/glightbox.min.js"></script>
    <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="vendor/swiper/swiper-bundle.min.js"></script>
    <script src="vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="vendor/php-email-form/validate.js"></script>
  
    <!-- Template Main JS File -->
    <script src="js/main.js"></script>
  


</body>
</html>