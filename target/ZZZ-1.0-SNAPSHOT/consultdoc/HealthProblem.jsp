<%-- 
    Document   : HealthProblem
    Created on : Apr 25, 2025, 12:33:32 PM
    Author     : sumitkumarsoni
--%><%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>HealthProblem</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100">
    <%@include file= "/component/includeFile/nav.jsp" %>
     
  <div class="flex justify-center items-center h-screen">
    <!-- Left Panel (Form) -->
    <div class="bg-white p-8 rounded-lg shadow-lg w-1/3">
      <h2 class="text-2xl font-bold mb-6">Consult with a Doctor</h2>

      <!-- Specialty Field -->
      <div class="mb-4">
        <label for="specialty" class="block text-gray-700 text-sm font-bold mb-2">Tell us your symptom or health problem</label>
        
      </div>

      <!-- Patient Name Field -->
      <div class="mb-4">
        <label for="patient-name" class="block text-gray-700 text-sm font-bold mb-2">Any Health Problem</label>
        <input
          type="text"
          id="patient-name"
          placeholder="Eg: Fever, Headache"
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
        />
      </div>

      <!-- Mobile Number Field -->
      <div class="mb-6">
        <label for="mobile-number" class="block text-gray-700 text-sm font-bold mb-2">Mobile Number</label>
        <div class="flex items-center">
          <span class="inline-block mr-2">
            <img
              src="https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png"
              alt="India Flag"
              class="w-6 h-4"
            />
          </span>
          <input
            type="text"
            id="mobile-number"
            placeholder="<%= session.getAttribute("number") %>" disabled
            maxlength="10"
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
          />
        </div>
        <p class="text-gray-600 text-xs mt-2">A verification code will be sent to this number.</p>
      </div>

      <!-- Continue Button -->
      <button id="continueBtn" class="bg-red-500 text-white font-bold py-2 px-4 rounded hover:bg-blue-600"><a href = "QRScanner/QRCode.jsp">
              Continue</a>
</button>

 
    </div>

    <!-- Right Column (Doctor Illustration) -->
    <div class=" ml-8 flex flex-col items-center">
      <img src="https://i.pinimg.com/736x/18/43/f6/1843f67cd829be499ee310abaa2f8531.jpg" alt="Doctor Illustration" class="w-24 h-24" />
      <p class="text-center text-gray-700 mt-2">Verified Doctors</p>
    </div>
  </div>
</body>
</html>


