<%@page import="com.joshi.demo.model.Order"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<html>

<head>
<link rel="stylesheet" type="text/css" href="styles.css">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
   * Reset some default styles for better consistency */
        
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column;
        }

        table {
            border-collapse: collapse;
            width: 20%;
            margin-top: 20px;
        }

        table, th, td {
            border: 2px solid #333;
        }

        th, td {
            padding: 10px;
            text-align: right;
        }

        th {
            background-color: #333;
            color: white;
        }

        
        .book-image {
        	height: 100px;
        	width: 100px;
        }
        
    </style>
</head>
<body>
     <jsp:include page="adminnavbar.jsp" />
     
<br><br>
<br><br>
    
    
    
<%@page import="javax.xml.bind.DatatypeConverter"%>

    
    

    <!-- The rest of your content goes here -->
    <div class="center">
        <table border="2">
            <tr> 
                <th>ORDER ID</th>
                <th>EMAIL</th>
                <th>ADDRESS</th>
                <th>CITY</th>
                <th>PINCODE</th>
                <th>PHNO</th>
                <th>BOOK ID</th>
                <th>BOOK NAME</th>
                <th>BOOK AUTHOR</th>
                <th>BOOK GENRE</th>
                <th>BOOK PRICE</th>
            </tr>
            <%@ page import = "com.joshi.demo.model.User" %>
            <%@ page import = "java.util.List" %>
            <%
            for(Order u : (List<Order>)request.getAttribute("command")) {
            %>
            
                <tr>
                <td><%=u.getOrderId() %></td>
                <td><%=u.getEmail() %></td>
                <td><%=u.getAdderss() %></td>
                <td><%=u.getCity() %></td>
                <td><%=u.getPincode() %></td>
                
                    <td><%= u.getPhno()  %></td>
                    <td><%= u.getBookId() %></td>
                    <td><%= u.getBookName()%></td>
                    <td><%= u.getBookAuthor() %></td>
                    <td><%= u.getBookGenre() %></td>
                    <td><%= u.getBookPrice() %></td>
                    
                </tr>
            <% } %>
        </table>
        <!-- <a href="/addbook">ADD NEW BOOK</a> -->
    </div>
</body>
</html>
