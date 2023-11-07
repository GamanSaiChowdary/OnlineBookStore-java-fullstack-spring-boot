<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    
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

        
        .card {
            background-color: #33;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 20px;
            border-radius: 5px;
            width: 300px; /* Adjust the card width as needed */
            margin: 20px auto; /* Center the card */
        }
        
        
    </style>
</head>
<body>
 <jsp:include page="adminnavbar.jsp" />
     
<br><br>
<br><br>
    <!-- The rest of your content goes here -->
    <div class="card">
    
        <f:form action="/savebook" method="post" onsubmit="alertNotification()" enctype="multipart/form-data">
            BOOKID:<%--  <f:input path="bookid" /><br /><br /> --%>
            <input type="text" name="bookid" id="bookid" required/><br><br>
            
            BOOKNAME:<%--  <f:input path="name" /><br /><br /> --%>
             <input type="text" name="name" id="name" required/><br><br>
            
            TYPE: <%-- <f:input path="type" /><br /><br /> --%>
             <input type="text" name="type" id="type" required/><br><br>
            
            GENRE: <%-- <f:input path="genre" /><br /><br /> --%>
             <input type="text" name="genre" id="genre" required/><br><br>
            
            AUTHOR: <%-- <f:input path="author" /><br /><br /> --%>
             <input type="text" name="author" id="author" required/><br><br>
            
            PUBLISH: <%-- <f:input path="publish" /><br /><br /> --%>
             <input type="text" name="publish" id="publish" required/><br><br>
            
            DESCRIPTION: <textarea id="description" name="description" required></textarea><br /><br />
            
             
            IMAGE: <%-- <f:input path="image" /><br /><br /> --%>
            <input type="file" name="_image" aria-describedby="inputGroupFileAddon04" required/><br><br>
            
            
            PRICE: <%-- <f:input path="price" /><br /><br /> --%>
			 <input type="text" name="price" id="price" required/><br><br>

            <input type="submit" value="ADDBOOK" /><br />
        </f:form>
    </div>
       
    <script>
		function alertNotification() {
			alert("Added New Book Successfully!!!")
		}
    </script>   
       
</body>
</html>
