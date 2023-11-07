<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="styles.css">
  <style>
  body {
            font-family: Arial, sans-serif;
            background-image: url('https://images5.alphacoders.com/394/thumb-1920-394862.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            display: flex;
            
            flex-direction: column;
            justify-content: space-between;
            min-height: 100vh;
            align-items: center;
            height: 100vh;
        }

        .card {
      width: 400px;
      border: 1px solid black; /* Set the card border to black */
      color:pink;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      background: none; /* Remove the card background */
    }

    .card h2 {
      text-align: center;
      margin-bottom: 20px;
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
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    
  
    background-image: url('https://thumbs.dreamstime.com/b/stack-books-white-floor-against-blue-sky-education-concept-90718454.jpg');
    background-size: cover; /* This makes the image cover the entire viewport */
    background-repeat: no-repeat; /* This prevents the image from repeating */
    background-attachment: fixed; /* This makes the background image fixed */
    /* You can adjust other styles as needed */
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
        <h1>Online Book Store</h1>
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
          <li><a href="contact">Contact</a></li>
        </ul>
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
<br/>
<br/>
<br/>

<br/><br/>


    <footer>
    <div class=card>
        <h2>Sign Up</h2>
        <f:form action="/save" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" pattern=".+@.+\.(com|in)" placeholder="example@domain.com" title="email must be in this format example@gmail.com" required>
            </div>

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="your full name" required>
            </div>

            <div class="form-group">
                <label for="phno">Phone Number:</label>
                <input type="tel" id="phno" name="phno" pattern="[0-9]{10}" placeholder="your phone number" title="phone number must contain 10 digits" required>
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" placeholder="your full address" required></textarea>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <!-- <input type="password" id="password" name="password" required> -->
                <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                
                
            </div>
			<input type="checkbox" onclick="togglePassword()">&nbsp Show Password<br><br>

			<div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>
			<div id="passwordMatchError" style="color: red;"></div>
			
			<script>
    const passwordInput = document.getElementById("password");
    const confirmPasswordInput = document.getElementById("confirmPassword");
    const passwordMatchError = document.getElementById("passwordMatchError");
    
    function validatePassword() {
        const password = passwordInput.value;
        const confirmPassword = confirmPasswordInput.value;

        if (password === confirmPassword) {
            passwordMatchError.textContent = "Passwords match!";
            passwordMatchError.style.color = "green";
        } else {
            passwordMatchError.textContent = "Passwords do not match.";
            passwordMatchError.style.color = "red";
        }
    }

    passwordInput.addEventListener("input", validatePassword);
    confirmPasswordInput.addEventListener("input", validatePassword);
</script>
			
			
			<div class="form-group">
			<label for="captcha">Captcha:</label>
				<img src = "data:real/jpg;base64, ${command.realCaptcha}" /> <br/><br/>
            </div>
			
			<div class="form-group">
				
                <input type="text" id="captcha" name="captcha" placeholder="Enter above captcha" required>
				
			</div>

			<div class="form-group">
				<f:hidden path="hiddenCaptcha"/>
               <!--  <input type="text" id="hiddenCaptcha" name="hiddenCaptcha" required> -->
			</div>
			
            <div class="form-group">
                <input type="submit" value="Register">
            </div>
        </f:form>
    </div>
    
    <script type="text/javascript">
    	function togglePassword() {
    	  var x = document.getElementById("password");
    	  if (x.type === "password") {
    	    x.type = "text";
    	  } else {
    	    x.type = "password";
    	  }
    	}
    </script>
    
      <!-- Your footer content here -->
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