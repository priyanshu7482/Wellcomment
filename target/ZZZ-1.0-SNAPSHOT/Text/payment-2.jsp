<!DOCTYPE html>
<html>
<head>
    <title>UPI Payment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        input, button {
            padding: 12px;
            font-size: 18px;
            width: 80%;
            max-width: 300px;
            margin: 10px auto;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
    <script type="text/javascript">
        function payViaUPI() {
            var userUpi = document.getElementById("userUpi").value;

            if (!userUpi || userUpi.indexOf("@") === -1) {
                alert("Please enter a valid UPI ID.");
                return;
            }

            var payeeUpi = "7482892121@ybl";
            var payeeName = "PaymentReceiver";
            var amount = "50";
            var transactionNote = "Auto Payment";
            var txnId = "TXN" + Date.now();

            var upiUrl = "upi://pay?pa=" + encodeURIComponent(payeeUpi)
                       + "&pn=" + encodeURIComponent(payeeName)
                       + "&am=" + encodeURIComponent(amount)
                       + "&tn=" + encodeURIComponent(transactionNote)
                       + "&cu=INR"
                       + "&tr=" + encodeURIComponent(txnId);

            // Redirect to UPI app
            window.location.href = upiUrl;
        }
    </script>
</head>
<body>
    <h2>Pay ?50 to 7482892121@ybl</h2>
    <p>Enter your UPI ID (just for formality):</p>
    <input type="text" id="userUpi" placeholder="yourupi@bank" />
    <br>
    <button onclick="payViaUPI()">Pay Now</button>
    <p style="margin-top:20px; font-size:14px;">
        <strong>Important:</strong> Works only on mobile with UPI apps installed (GPay, PhonePe, Paytm, etc).
    </p>
</body>
</html>
