<%@page import="javax.xml.bind.DatatypeConverter"%>
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
            width: 60%;
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

        
        
        
    </style>
</head>
<body>
     
<jsp:include page="adminnavbar.jsp" />
     
<br><br>
<br><br>
    <!-- The rest of your content goes here -->
    <div class="center">
       <br/>
        <table border="2">
            <tr> 
                <th>BOOKID</th>
                <th>BOOKNAME</th>
                <th>BOOKTYPE</th>
                <th>GERNE</th>
                <th>AUTHOR</th>
                <th>PUBLISH</th>
                <th>DESCRIPTION</th>
                <th>IMAGE</th>
                <th>PRICE</th>
                <th>Rating</th>
                <th>No. of Purchases</th>
                <th>No. of User Rated</th>
            </tr>
            <%@ page import = "com.joshi.demo.model.Book" %>
            <%@ page import = "java.util.List" %>
            <%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
            <%
            for(Book b:(List<Book>)request.getAttribute("ul")) {
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
                <tr>
                    <td><%= b.getBookid()  %></td>
                    <td><%= b.getName() %></td>
                    <td><%= b.getType()%></td>
                    <td><%= b.getGenre() %></td>
                    <td><%= b.getAuthor()%></td>
                    <td><%= b.getPublish() %></td>
                    <td><%= b.getDescription() %></td>
                    <%-- <td><%= b.getImage() %></td> --%>
                    <td><img class="book-image" style="height:100px; width:100px; " src="data:image/jpeg;base64, <%= DatatypeConverter.printBase64Binary(imageData) %>" alt="Book Image"> </td>
                    <td><%= b.getPrice() %></td>
                    <td><%= b.getRating() %></td>
                    <td><%= b.getPurchases() %></td>
                    <td><%= b.getPeopleRated() %></td>
                    <td><a href="/delete/<%= b.getBookid() %>" onclick="alertNotification()" class="delete-button">Remove Book</a></td>
                </tr>
            <% } %>
        </table>
        <br>
    </div>
    <script>
		function alertNotification() {
			alert("Removed Book Successfully!!!")
		}
    </script>   
</body>
</html>
