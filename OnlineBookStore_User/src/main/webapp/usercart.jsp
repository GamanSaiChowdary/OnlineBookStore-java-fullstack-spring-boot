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
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
li.profile {
  position: relative;
}

.navbar {
    color: black;
    padding: 20px;
    text-align: center;
    font-family: sans-serif;
}

/* Style for the checker name */
.checker-name {
    font-size: 24px;
    font-weight: bold;
}

h2 {
    color: orange;
}

.card-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 60vh; /* Adjust the height as needed */
}

.card {
    flex: 1;
    color: red;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    height: 250px; /* Adjust the height as needed */
    display: inline-block;
    position: relative;
    color: lightblue;
    margin-left: 450px;
    margin-right: 500px;
    background-color: white;
    display: flex;
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
    .make-payment-button {
            background-color: #FFA500; /* Orange background for Make Payment button */
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 30px; /* Curved border */
            cursor: pointer;
        }

        .make-payment-button:hover {
            background-color: #FFD700; /* Lighter yellow on hover for Make Payment button */
        }

        /* Style for the "Confirm" button */
        .confirm-button {
            background-color: #FAD02E; /* Yellow background for Confirm button */
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 30px; /* Curved border */
            cursor: pointer;
        }

        .confirm-button:hover {
            background-color: #FF8C00; /* Lighter orange on hover for Confirm button */
        }
</style>
</head>
<body>
	<jsp:include page="usernavbar.jsp"></jsp:include>
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h2><%for(int i=0; i<52; i++) {%>&nbsp<%} %>&nbspShopping Cart</h2>
	<%List<Book> b = (List<Book>)request.getAttribute("command");%>
<!-- <div class="container"> -->

<br><br>

<%
double total = 0;
for(Book i : b) {
 Blob blob = i.getImage();

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
        <div>
            <li class="profile">
           
             
            <a href="/removefromcart/<%=i.getBookid() %>"><img src="images/g6.png" alt="Profile Icon"></a>
            </div>
            <br>
            <br>
            &nbsp&nbsp&nbsp
        <img class="image" src="data:image/jpeg;base64, <%= DatatypeConverter.printBase64Binary(imageData) %>" >
         <div class="overlay-content">
            <h2><%=i.getName() %></h2>
            
            <h3>By <%=i.getAuthor() %></h3>
            
            <%-- <h5>Purchases: <%=b.getPurchases() %></h5> --%>
            
            <h3 style="text-align: left;">Rs. <%=i.getPrice() %></h3>
            <%total += i.getPrice(); %>
            <br>
           <a href="/book/<%=i.getBookid() %>" ><button class="a">View Book</button></a>	
      </div>
      </div>
      </div>
      <br><br>
      <%} %>
      <center><h3>Total Amount: <%=total %></h3>
      <form action="cartbooking"> <input type="submit" value="Checkout"/>
      </form>
      </center>
      <br>
      
      <br>
      <br>
      <br>
</body>
</html>