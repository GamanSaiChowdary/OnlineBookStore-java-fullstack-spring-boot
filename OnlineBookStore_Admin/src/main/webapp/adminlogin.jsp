<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
  <style>
    /* Reset some default styles */
    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      background-image: url('https://images2.alphacoders.com/438/438688.jpg'); /* Background color for the entire page */
    }

    .container {
      width: 300px;
      margin: 0 auto;
      margin-top: 50px;
      padding: 20px;
      border: none; /* Remove the border */
      background-color: transparent; /* Remove the background color */
    }

    h1 {
      text-align: center;
      color: red;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    .input-container {
      position: relative;
      margin-bottom: 10px;
    }

    .input-container input[type="text"],
    .input-container input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid black; /* Black border around input fields */
      border-radius: 5px; /* Rounded corners for input fields */
    }

    .input-container input[type="text"]::placeholder,
    .input-container input[type="password"]::placeholder {
      position: absolute;
      left: 40px; /* Space for the icon */
      top: 50%; /* Center the placeholder vertically */
      transform: translateY(-50%);
      color: #aaa; /* Placeholder text color */
    }

    .input-container .icon {
      position: absolute;
      left: 10px; /* Adjust as needed to align the icon */
      top: 50%; /* Center the icon vertically */
      transform: translateY(-50%);
    }
    .profile-img {
      width: 50px; /* Adjust image size as needed (smaller) */
      height: 50px;
      border-radius: 50%; /* Rounded image */
      object-fit: cover; /* Maintain aspect ratio and cover container */
    }


    .button {
      width: 100%;
      background-color: #39db34; /* Button background color (blue) */
      color: white;
      border: none;
      border-radius: 20px; /* Rounded corners for the button */
      padding: 10px;
      cursor: pointer;
    }

    .button:hover {
      background-color: #29b948; /* Button background color on hover */
    }
  </style>
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


<div class="container">
   <center> <img class="profile-img" src="https://www.clipartkey.com/mpngs/m/208-2089363_user-profile-image-png.png" alt="Admin Profile Image" /></center>
  <h1><i class="fas fa-user-alt"></i> Admin Login</h1>

   <form method="post" action="checkadminlogin">
    <div class="input-container">
      <i class="fas fa-user-alt icon"></i> <input type="text" name="username" id="username" required placeholder="Username" />
    </div>

    <div class="input-container">
      <i class="fas fa-key icon"></i> <input type="password" name="password" id="password" required placeholder="Password" />
    </div>

    <input type="submit" value="Login" class="button" required placeholder="Login">
  </form>
</div>

</body>
</html>