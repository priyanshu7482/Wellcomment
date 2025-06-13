<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // ==== Backend check for AJAX polling ====
    String check = request.getParameter("checkStatus");
    if ("true".equals(check)) {
        // Yahan aap real payment check kar sakte ho (e.g., database lookup)
        // For demo, we return "success" after 10 seconds delay

        HttpSession session = request.getSession();
        Long startTime = (Long) session.getAttribute("startTime");
        if (startTime == null) {
            startTime = System.currentTimeMillis();
            session.setAttribute("startTime", startTime);
        }

        boolean paid = (System.currentTimeMillis() - startTime) > 10000; // 10 sec
        response.setContentType("text/plain");
        response.getWriter().write(paid ? "success" : "pending");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>QR Code Payment</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

<div class="bg-white p-6 rounded-lg shadow-md text-center">
    <h2 class="text-xl font-bold mb-4">Scan to Pay</h2>
    <img src="https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=upi://pay?pa=7482892121@ybl&pn=Priyanshu%20Kumar&am=50.00&cu=INR" alt="QR Code" class="mx-auto mb-4">
    <p class="text-gray-600">Please scan and complete the payment.</p>
</div>

<script>
    function checkPaymentStatus() {
        fetch("qrPayment.jsp?checkStatus=true")
            .then(res => res.text())
            .then(status => {
                if (status.trim() === "success") {
                    window.location.href = "paymentSuccess.jsp";
                }
            });
    }

    setInterval(checkPaymentStatus, 3000); // check every 3 seconds
</script>

</body>
</html>
