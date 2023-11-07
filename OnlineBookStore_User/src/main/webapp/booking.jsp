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
</head>
<style>
.body {
    background-color: white;
    color: white;
}

.navbar {
    background-color: #EBEBEB;
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
            padding: 5px 10px;
            border-radius: 30px; /* Curved border */
            size: 100px;
            cursor: pointer;
        }

        .confirm-button:hover {
            background-color: #FF8C00; /* Lighter orange on hover for Confirm button */
        }

</style>

<body>
<div class="navbar">
    <div class="checker-name">Checkout</div>
  </div>


  <br> <br>
 <br>
 
  <br>
  
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
   <center><h2>1.BookDetails</h2></center>
   <div class="card">
  
      <div class="image-container">
        <!-- <img class="image" src="images/F1.jpg" alt="Image"> -->
        <img class="image" src="data:image/jpeg;base64, <%= DatatypeConverter.printBase64Binary(imageData) %>" >
         <div class="overlay-content">
            <h2><%=b.getName() %></h2>
            
            <h3>By <%=b.getAuthor() %></h3>
            
            <%-- <h5>Purchases: <%=b.getPurchases() %></h5> --%>
            
            <h3 style="text-align: left;">Rs. <%=b.getPrice() %></h3>
            <br>
           
        		</form>
      </div>

      <!-- Cart button with orange background -->
      
            </div>
        </div>
    </div>
    
     <center><h2>2.Billing Details</h2></center>
    <div class="card">
  
      <form action="your_form_action_url" method="post">
            <div class="form-group">
            <h3>Order Summary</h3>
            <br>
                <label for="Items">Items : <%for(int i=0;i<17;i++){ %> &nbsp&nbsp<% } %> Rs. <%=b.getPrice() %></label>
                
                
                
            </div>
            <div class="form-group">
                <label for="delivery">Delivery : <%for(int i=0;i<23;i++){ %> &nbsp <% } %>Rs. 40</label> 
                
            </div>
            <hr>
            <br>
            <div class="form-group">
                <label for="pincode">Total : <%for(int i=0;i<17;i++){ %> &nbsp&nbsp <% } %> Rs. <%=(40 + b.getPrice()) %></label>
               <%session.setAttribute("book-price", b.getPrice() + 40); %>
               <%System.out.println(session.getAttribute("book-price")); %>
               
            </div>
         
            
        </form>
         

     
      
            
        
    </div>
    <br>
    <center>
    <button id="redirectButton" class="make-payment-button" onclick="checkSessionAttributeAndRedirect(<%=b.getPrice() + 40 %>)">Make Payment</button>
</center>
    
    
    <br><br>
    <center><h2>3.Delivery Details</h2></center>
    <div class="card">
  
      <form action="updateorder" method="get">
            <div class="form-group">
                <label for="name">Address:</label>
                <input type="text" id="name" name="address" required placeholder="H.No., R.No., Street, ..">
            </div>
            <div class="form-group">
                <label for="city">City:</label>
                <input type="text" id="city" name="city" required placeholder="City">
            </div>
            <div class="form-group">
                <label for="pincode">Pincode:</label>
                <input type="text" id="pincode" name="pincode" required placeholder="Pincode">
            </div>
            

     
    </div>
    <br>
    <br>
    <br>
    <div>
    
  <center>

        <br><br>
            <div class="form-group">
                <input type="submit" class="confirm-button" value="Confirm"></input>
            </div>
            </form>
    </center>
</div>
<script>
function checkSessionAttributeAndRedirect(price) {
	const p = price;
        alert('Payment Is Not Done Yet.');
        const url = 'http://localhost:8082/payment/' + p;

        window.open(url, '_blank');
        //location.reload();
}

</script>



<br>
<br>
<br>
<br>
<br>
</body>
</html>