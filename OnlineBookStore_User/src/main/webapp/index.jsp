<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html  lang="en">
<html>
<head>

<style>
     body {
            background-image: url('data:image/jpeg;base64,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');
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
   
</style>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online Book store</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="images/b4.jpg" rel="icon">
  <link href="images/apple-touch-icon.png" rel="book-icon">

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

      <a href="/" class=<img src="images/b2.jpg" alt="" />
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="assets/img/b2.jpg" alt=""> 
        <i class="bi bi-book"></i>
        <h1>Online Book Store</h1>
      </a>
      <center>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/">Home</a></li>
          <li><a href="about" class="active">About</a></li>
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
          <script>
          	function askToLogin() {
          		alert("Login To View Books");
          	}
          </script>
          <li><a href="contact">Contact</a></li>
          <li><ul><li><a></a></li></ul> </li>
          </ul></center>
          
          
          
       
      </nav><!-- .navbar -->
       
      <div class="header-social-links">
        
        <a href="https://www.linkedin.com/pulse/online-bookstore-gaman-sai-chowdary-garapati%3FtrackingId=eRG9Ho9woRCPE0CRcGrZ2g%253D%253D/?trackingId=eRG9Ho9woRCPE0CRcGrZ2g%3D%3D" target="_blank" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>

      
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex flex-column justify-content-center align-items-center" data-aos="fade" data-aos-delay="1500">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6 text-center">
          <h2 class="blinking-text"><span></span>WELCOME TO BOOKS WORLDS</h2></h2class>
          
        </div>
      </div>
    </div>
  </section><!-- End Hero Section -->
  

    <!-- ======= Services Section ======= -->
    <center>
    <section id="services" class="services">
      <center>
      <div class="container">
          <div class="row gy-9">
  
              <div class="col-xl-5 col-md-8 d-flex">
                  <div class="service-item position-relative">
                      <img src="images/jos.jpg" class="testimonial-img" alt="">
                      <h4><a href="" class="stretched-link">Fiction</a></h4>
                      <p>Fictional books are often synonymously categorized under the umbrella term of "novel." The category of fiction is immense and has a huge plethora of sub-divisions or genres, which is both a boon and a curse for bookworms.</p>
                  </div>
              </div><!-- End Service Item -->
  
              <div class="col-xl-5 col-md-9 d-flex">
                  <div class="service-item position-relative" style="margin-left: 20px;"> <!-- Add margin-top here -->
                      <img src="images/jos1.jpg" class="testimonial-img" alt="">
                      <h4><a href="" class="stretched-link">Non-Fiction</a></h4>
                      <p>The polar opposite of fictional books, nonfiction books are based on facts, true accounts of history and real events. Also, unlike fiction books, nonfiction books have relatively few genres. The most common types of books that make up nonfictional works are biographies, autobiographies, almanacs and encyclopedias.</p>
                  </div>
              </div><!-- End Service Item -->
          </div>
      </div>
    </center>
  </section>
</center>
  
          <!-- ======= Services Section ======= -->
   


          

    

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container">

        <div class="section-header">
          <h2>BOOKS GALAXY</h2>
          <p>COMBO OF FICTION AND NON-FICTION</p>
        </div>

        <div class="slides-3 swiper">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  “Harry Potter” series by J.K. Rowling, “Lord of the Rings” by J.R. Tolkien
                </p>
                <div class="profile mt-auto">
                  <img src="images/F1.jpg" class="testimonial-img" alt="">
                  <h3>Fantasy</h3>
                  <h4>Harry Potter</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  “The War of the Worlds” by H.G. Wells and “The Hitchhiker’s Guide to the Galaxy” by Douglas Adams.
                </p>
                <div class="profile mt-auto">
                  <img src="images/F2.jpg" class="testimonial-img" alt="">
                  <h3>Science Fiction</h3>
                  <h4>The War of the Worlds</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  “Treasure Island” by R. L. Stevenson,
                </p>
                <div class="profile mt-auto">
                  <img src="images/F3.jpg" class="testimonial-img" alt="">
                  <h3>Adventure</h3>
                  <h4>Treasure Island</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  Chicken Soup for the Soul” books by Jack Canfield and Mark Victor Hansen,
                </p>
                <div class="profile mt-auto">
                  <img src="images/N1.jpg" class="testimonial-img" alt="">
                  <h3>SELF-HELP BOOK</h3>
                  <h4>Chicken Soup for the Soul</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  “Cravings: Hungry for More” by Chrissy Teigen and “Calypso” by David Sedaris.
                </p>
                <div class="profile mt-auto">
                  <img src="images/N3.jpg" class="testimonial-img" alt="">
                  <h3>Narrative Nonfiction</h3>
                  <h4>Cravings: Hungry for More</h4>
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

  </main><!-- End #main -->
  
  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>gaman association</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
    
  </footer><!-- End Footer -->

  <a href="" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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