<%@page import="com.gaman.demo.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-image: url('https://images5.alphacoders.com/394/thumb-1920-394862.jpg');

}
 h1 {
      text-align: center;
      color: red;
      margin-bottom: 20px;
    }
.card-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 60vh; /* Adjust the height as needed */
    border: 4px double red;
    max-width: 500px; /* Maximum width of the card */
    width: 100%; /* Full width initially */
    transition: width 0.5s; 
    color: lightpink;
    margin: 0 auto;
}
h2{
color:orange;
 }

.card {
    min-height:500px;
    max-width: 800px; /* Maximum width of the card */
    width: 100%; /* Full width initially */
    transition: width 0.9s; /* Smooth transition for width changes */
    color: red;
    border: 4px double red;
    padding: 8px;
    border-radius: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    /* Adjust the height as needed */
    display: inline-block;
    position: relative;
    background-color: grey;
    display: flex;
    margin: 0 auto;
    }

.image-container {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
}

.image {
    height: 150px;
    width: 100px;
    object-fit: cover;
}

.overlay-content {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    color: black;
    font-style: italic;
    padding: 20px;
}

h3,
h4 {
    margin: 5px;
}

.form-group {
    margin-bottom: 20px;
    color: black;
    font-size: 20px;
}

.form-group label {
    display: block;
    font-weight: bold;
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 10px;
    color:black;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.form-group input[type="file"] {
    border: none;
    padding: 0;
}

.form-group input[type="submit"] {
    background-color: #333;
    color: black;
    border: none;
    padding: 10px 20px;
    border-radius: 30px;
    cursor: pointer;
}

.form-group input[type="submit"].cart-button {
    background-color: #FFA500;
}

.form-group input[type="submit"]:hover {
    background-color: #FFD700;
}
.profile-img {
      width: 100px; /* Adjust image size as needed (smaller) */
      height: 100px;
      border-radius: 50%; /* Rounded image */
      object-fit: cover; /* Maintain aspect ratio and cover container */
    }
</style>
<body>
<jsp:include page="usernavbar.jsp" />
<br>
<br>
<br>
<br>
<br>

<!-- Card Container -->
<div class="card-container">
    <div class="card">
    <center> <img class="profile-img" src="https://www.clipartkey.com/mpngs/m/208-2089363_user-profile-image-png.png" alt="Admin Profile Image" /></center>
  <center><h1><i class="fas fa-user-alt"></i> <h1>Your Profile</h1></center>
        <!-- Display the fields in a table -->
        <%User u = (User)session.getAttribute("email"); %>
        
        <table>
            <tr>
                <td><h4>Email:</h4></td>
                <td><%=u.getEmail() %></td>
            </tr>
            <br>
            <tr>
                <td><h4>Name:</h4></td>
                <td><%=u.getName() %></td>
                   </tr>
            <br>
            <tr>
                <h2><td><h4>Phone Number:</h4></td></h2>
                <td><%=u.getPhno() %></td>
            </tr>
            <tr>
                <h2><td><h4>Address:</h4></td></h2>
                <td><%=u.getAddress() %></td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
