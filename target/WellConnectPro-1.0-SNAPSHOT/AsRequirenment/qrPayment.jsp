<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Database config (use a real config or DataSource in production)
    String jdbcUrl = "jdbc:mysql://localhost:3306/wellpro";
    String dbUser = "root";
    String dbPass = "root";

    // Static transaction ID for demo (usually this will be dynamic)
    String transactionId = "TXN123";

    // Handle AJAX check for payment status
    String check = request.getParameter("checkStatus");

    if ("true".equals(check)) {
        String status = "pending";  // Default status

        // Check payment status from database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
            PreparedStatement ps = conn.prepareStatement("SELECT status FROM payments WHERE transaction_id = ?");
            ps.setString(1, transactionId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                status = rs.getString("status");
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // If payment is successful, update status to 'success'
        if ("pending".equals(status)) {
            try {
                // Simulate payment success (replace with real payment gateway notification logic)
                Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
                PreparedStatement ps = conn.prepareStatement("UPDATE payments SET status = 'success' WHERE transaction_id = ?");
                ps.setString(1, transactionId);
                int rowsUpdated = ps.executeUpdate();
                if (rowsUpdated > 0) {
                    status = "success";
                }
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        // Return the current payment status to frontend
        response.setContentType("text/plain");
        response.getWriter().write(status);
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>QR Payment</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
    <div class="bg-white p-6 rounded shadow text-center">
        <h2 class="text-lg font-bold mb-4">Scan to Pay</h2>
        <!-- QR Code with Shubham and UPI ID 7991444752@ybl -->
        <img src="https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=upi://pay?pa=7991444752@ybl&pn=Shubham&am=1.00&cu=INR&tn=<%= transactionId %>" alt="QR Code" class="mx-auto mb-4">
        <p class="text-gray-600">Scan the code and complete the payment of ₹1.</p>
    </div>

    <script>
        // Function to check payment status every 4 seconds
        function checkPaymentStatus() {
            fetch("qrPayment.jsp?checkStatus=true")
                .then(res => res.text())
                .then(status => {
                    if (status.trim() === "success") {
                        // Redirect to payment success page
                        window.location.href = "paymentSuccess.jsp";
                    }
                });
        }

        // Call the function to check status at regular intervals
        setInterval(checkPaymentStatus, 4000); // check every 4 seconds
    </script>
</body>
</html>
    