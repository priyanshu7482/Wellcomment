<%-- 
    Document   : QRCode
    Created on : May 13, 2025, 9:48:49 PM
    Author     : sumitkumarsoni
--%>
<%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QRCode</title>
          <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />

    </head>
    <body class="bg-gradient-to-r from-indigo-500 from-10% via-red-500 via-30% to-emerald-500 to-90% ">
        <br><br><br> <br> 

     <div class="max-w-md mx-auto bg-white shadow-lg rounded-lg p-6">
    <h2 class="text-xl font-semibold text-gray-800">Confirm & Pay</h2>
    
    <div class="flex items-center space-x-4 mt-4">
    <!-- Doctor Profile Images inside Circle -->
    <div class="w-12 h-12 rounded-full overflow-hidden bg-gray-300 flex justify-center items-center">
        <img src="https://i.pinimg.com/736x/dd/2b/4f/dd2b4fdd8400deabc486bcab57db4866.jpg" class="w-full h-full object-cover"/>
    </div>
    <div class="w-12 h-12 rounded-full overflow-hidden bg-gray-300 flex justify-center items-center">
        <img src="https://i.pinimg.com/736x/d9/27/43/d927430b611ecd69d0346a42392e3983.jpg" class="w-full h-full object-cover"/>
    </div>
    <div class="w-12 h-12 rounded-full overflow-hidden bg-gray-300 flex justify-center items-center">
        <img src="https://i.pinimg.com/736x/10/a8/9d/10a89dcaba4934f32a7d553c9c96426f.jpg" class="w-full h-full object-cover"/>
    </div>
    <span class="text-gray-500">+161</span>
</div>
    
    <p class="text-gray-600 mt-2">One of them will speak to you shortly.</p>
    <p class="text-green-600 mt-2 font-medium">93% of users found online consultation helpful</p>

   <div class="mt-4">
    <label class="block text-gray-700 font-medium">Patient Name</label>
    <input type="text" id="patient-name" class="w-full border border-gray-300 rounded p-2 mt-1" required />
</div>

<div class="mt-4 flex justify-between items-center">
    <p class="text-lg font-semibold text-gray-800">Final Fee: ₹499</p>
    <button id="continue-btn" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Continue to payment</button>
</div>

<script>
    document.getElementById("continue-btn").addEventListener("click", function(event) {
        let patientName = document.getElementById("patient-name").value.trim();

        if (patientName === "") {
            alert("Please enter the patient's name before continuing.");
            event.preventDefault(); // Prevents navigation
        } else {
            window.location.href = "../QRScanner/QRMethods.jsp"; // Allows navigation if input is filled
        }
    });
</script>
    
    <div class="mt-6 bg-blue-100 p-4 rounded">
        <p class="font-medium text-blue-800">3x more affordable!</p>
        <p class="text-gray-600 text-sm">Get affordable healthcare online, with fees up to 3 times lesser than in-clinic fees.</p>
    </div>
</div>
    </body>
</html>
