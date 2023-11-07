<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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
    height: 550px; /* Adjust the height as needed */
    display: inline-block;
    position: relative;
    color: black;
    font-weight: bold;
    margin-left: 450px;
    margin-right: 500px;
    background-color: white;
    display: flex;
    align-items: center;
}

</style>
<body>

<div class="card">
  <center>
      <form action="/reciept" method="get">
      		<h2>Scan the QR, make Payment and CHECK PAYMENT</h2>
      		
            <div class="form-group">
                <h2>Amount: <%=request.getAttribute("price") %></h2>
                </div>
            <div class="form-group">
                <img style="height:300px; width:300px;" src="/static/qr.jpg">
            </div>
            <br><br>
            <input type="submit" value="CHECK PAYMENT">
        </form>
</center>
     
      
            
        
    </div>
   
</body>
</html>