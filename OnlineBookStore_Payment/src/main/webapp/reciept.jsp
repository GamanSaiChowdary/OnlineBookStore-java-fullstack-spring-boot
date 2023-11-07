<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Details</title>
    <style>
      
       body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('your-background-image.jpg');
            background-size: cover;
            background-blur: blur(5px); /* Apply background blur */
        }
        

        .table {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 200vh;
            
        }

        .card {
            background-color: white; /* Set the card background to white */
            height: 250px;  
            box-shadow: 0px 0px 10px rgb(25, 19, 19);
            border-radius: 20px;
            margin-left: 350px;
            margin-right: 400px;
            text-align: center;
        }

        .icon img {
            width: 40px; /* Adjust icon size as needed */
        }

        .payment-details td {
            text-align: left;
        }

        span {
            font-weight: bold;
        }
        .profile-img {
      width: 70px; /* Adjust image size as needed (smaller) */
      height: 70px;
      text-align:center;
      border-radius: 50%; /* Rounded image */
      object-fit: cover; /* Maintain aspect ratio and cover container */
    }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="table">
    <table class="card">
    <tr>
    <center><td><center> <img class="profile-img" src="data:image/png;base64,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" alt="Admin Profile Image" /></center></td></center>
            </tr>
        
           
            <tr class="payment-details">
                <td>Payment ID:</td>
                <td>123456</td>
            </tr>
            <tr class="payment-details">
                <td>Paid On:</td>
                <td>2023-11-04</td>
            </tr>
            <tr class="payment-details">
                <td>Email:</td>
                <td>example@email.com</td>
            </tr>
            <tr class="payment-details">
                <td>Mobile Number:</td>
                <td>123-456-7890</td>
            </tr>
        </table>
    </div>
</body>
</html>