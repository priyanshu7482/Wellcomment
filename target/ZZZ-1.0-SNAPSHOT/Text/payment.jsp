<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String upiId = "7482892121@ybl";
    String name = "YourName"; // Replace with your name
    String amount = "50.00";
    String transactionNote = "Payment to You";
    String transactionId = "TXN" + System.currentTimeMillis();

    String upiUrl = "upi://pay?pa=" + URLEncoder.encode(upiId, "UTF-8") +
                    "&pn=" + URLEncoder.encode(name, "UTF-8") +
                    "&tn=" + URLEncoder.encode(transactionNote, "UTF-8") +
                    "&am=" + URLEncoder.encode(amount, "UTF-8") +
                    "&cu=INR" +
                    "&tr=" + URLEncoder.encode(transactionId, "UTF-8");

    // QR Code generator service (optional)
    String qrCodeUrl = "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=" + URLEncoder.encode(upiUrl, "UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Pay via UPI</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            display: inline-block;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        img {
            margin-top: 20px;
        }
        a.button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        a.button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Pay ₹<%= amount %> via UPI</h2>
        <p>Scan the QR code using any UPI app or click the button below:</p>
        <img src="<%= qrCodeUrl %>" alt="UPI QR Code" />
        <br/>
        <a class="button" href="<%= upiUrl %>">Pay with UPI App</a>
        <p style="margin-top: 20px;">Receiver UPI ID: <strong><%= upiId %></strong></p>
    </div>
</body>
</html>
