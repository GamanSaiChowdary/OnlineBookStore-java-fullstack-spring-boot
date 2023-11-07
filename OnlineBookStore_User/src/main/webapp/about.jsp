<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
    body {
            background-image: url('https://images.app.goo.gl/wUWUdogQrc5DEnhE8');
            background-size: cover; /* This makes the image cover the entire viewport */
            background-repeat: no-repeat; /* This prevents the image from repeating */
            background-attachment: fixed; /* This makes the background image fixed */
            /* You can adjust other styles as needed */
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

  <title>Online Book Store</title>
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
        <!-- Uncomment the line below if you also wis=h to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <i class="bi bi-book"></i>
        <h1>Online Book store</h1>
      </a>

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
          <li><a href="contact">Contact</a></li>
        </ul>
      </nav><!-- .navbar -->
	
      <div class="header-social-links">
        
        <a href="https://www.linkedin.com/pulse/online-bookstore-gaman-sai-chowdary-garapati%3FtrackingId=eRG9Ho9woRCPE0CRcGrZ2g%253D%253D/?trackingId=eRG9Ho9woRCPE0CRcGrZ2g%3D%3D" target="_blank" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
  <section>
    <div>
      <p>If you consider the thousands of different books available in the world, the adage, “So many books, so little time” takes on a completely new meaning. In fact, just the genres and sub-genres are so many that they are impossible to list down.
        All book lovers have their own favorite genre — in fact, multiple favorite genres. In all honesty, there are so many genres to choose from, that there are many who have a preferred genre for every mood.
        </p>
    </div>
  </section>

<section id="testimonials" class="testimonials">
 
    <div class="container">

      <div class="section-header">
        <h2>BOOKS GALAXY</h2>
        <p>COMBO OF FICTION AND NON-FICTION</p>
        <b> <p class="style text">If you consider the thousands of different books available in the world, the adage, “So many books, so little time” takes on a completely new meaning.
        </p></b>
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