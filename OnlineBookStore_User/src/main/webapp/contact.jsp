<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> 
<head>
<style>

</style>

<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Book store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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
<script type="text/javascript">  
  window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    // Handle page restore.
	    window.location.reload();
	  }
	});
  </script>
<!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid d-flex align-items-center justify-content-between">

      <a href="/" class="logo d-flex align-items-center  me-auto me-lg-0">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <i class="bi bi-book"></i>
        <h1>Online book Store</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="about">About</a></li>
          <li class="dropdown"><a href="#" class="active"><span>User</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="signup">SignUp</a></li>
              <li><a href="userlogin">Login</a></li>
             
             
            </ul>
          </li>
         <li class="dropdown"><a href="#" class="active"><span>Browse Books</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
             
              
              <li class="dropdown"><a href="#"><span>Fiction</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="#"></a></li>
                  <li><a href="/userlogin" onclick="askToLogin()">Crime & Mystery</a></li>
                  <li><a href="/userlogin" onclick="askToLogin()">Adventure</a></li>
                  <li><a href="/userlogin" onclick="askToLogin()">Humour</a></li>
                </ul>
              </li>
              <li class="dropdown"><a href="#"><span>Non Fiction</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                <ul>
                  <li><a href="/userlogin" onclick="askToLogin()">Science & History</a></li>
                  <li><a href="/userlogin" onclick="askToLogin()">Biography & Autobiography</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="contact" class="active">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->

     <div class="header-social-links">
        
        <a href="https://www.linkedin.com/pulse/online-bookstore-gaman-sai-chowdary-garapati%3FtrackingId=eRG9Ho9woRCPE0CRcGrZ2g%253D%253D/?trackingId=eRG9Ho9woRCPE0CRcGrZ2g%3D%3D" target="_blank" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->

  <main id="main" data-aos="fade" data-aos-delay="1500">

    <!-- ======= End Page Header ======= -->
    <div class="page-header d-flex align-items-center">
      <div class="container position-relative">
        <div class="row d-flex justify-content-center">
          <div class="col-lg-6 text-center">
            <h2>Contact</h2>
            
          </div>
        </div>
      </div>
    </div><!-- End Page Header -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="row gy-4 justify-content-center">

          <div class="col-lg-3">
            <div class="info-item d-flex">
              <i class="bi bi-geo-alt flex-shrink-0"></i>
              <div>
                <h4>Location:</h4>
                <p>KL University, Vijayawada, INDIA, 522302</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3">
            <div class="info-item d-flex">
              <i class="bi bi-envelope flex-shrink-0"></i>
              <div>
                <h4>Email:</h4>
                <p>gamangarapati@gmail.com</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3">
            <div class="info-item d-flex">
              <i class="bi bi-phone flex-shrink-0"></i>
              <div>
                <h4>Call:</h4>
                <p>+91 9390299192</p>
              </div>
            </div>
          </div><!-- End Info Item -->

        </div>

        <div class="row justify-content-center mt-4">

          <div class="col-lg-9">
            <form action="contact-mail" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" style="font-weight:bold;color:black; background-color:white;" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" style="font-weight:bold;color:black; background-color:white;" class="form-control" name="email" id="email" pattern=".+@.+\.(com|in)" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" style="font-weight:bold;color:black; background-color:white;" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea style="font-weight:bold;color:black; background-color:white;" class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

 
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <div id="preloader">
    <div class="line"></div>
  </div> 

  <!-- Vendor JS Files -->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/aos/aos.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>
</html>