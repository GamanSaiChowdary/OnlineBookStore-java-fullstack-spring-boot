<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.gaman.demo.model.Order"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
    body{
    background-image: url('https://images5.alphacoders.com/394/thumb-1920-394862.jpg');
    }
        .card {
            padding: 10px;
            double-border: 1px solid #ccc;
            border-radius: 10px;
            margin-left: 450px;
            margin-right: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color: white;
        }

        table {
            width: 100%;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>

<jsp:include page="usernavbar.jsp" />

<br>
<br>
<br>
<br>
<br>
<%List<Order> ol = (List<Order>)request.getAttribute("ol");%>
<div class="card">
    <h2>My Orders</h2>
    <%for(Order i : ol) { %>
    <table>
        <tr>
            <td><label for="orderId">Order ID:</label></td>
            <td><%=i.getOrderId() %></td>
          <!--   <td><input type="text" id="orderId" name="orderId"></td> -->
        </tr>
        <tr>
            <td><label for="name">BookName:</label></td>
             <td><%=i.getBookName() %></td>
            <!-- <td><input type="text" id="name" name="name"></td> -->
        </tr>
        <tr>
            <td><label for="address">Address:</label></td>
             <td><%=i.getAdderss() %></td>
            <!-- <td><input type="text" id="address" name="address"></td> -->
        </tr>
        <tr>
            <td><label for="city">City:</label></td>
             <td><%=i.getCity() %></td>
            <!-- <td><input type="text" id="city" name="city"></td> -->
            
        </tr>
        <tr>
            <td><label for="pincode">Pincode:</label></td>
             <td><%=i.getPincode() %></td>
            <!-- <td><input type="text" id="pincode" name="pincode"></td> -->
        </tr>
        <tr>
            <td><label for="price">Price:</label></td>
             <td><%=i.getBookPrice() %></td>
          <!--   <td><input type="text" id="price" name="price"></td> -->
        </tr>
    </table>
    <br><br>
    <%} %>
</div>
</body>
</html>
