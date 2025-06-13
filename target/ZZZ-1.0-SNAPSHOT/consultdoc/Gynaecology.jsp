<%
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
  <title> Gynaecology </title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100">
    <%@include file= "/component/includeFile/nav.jsp" %>
            <%@include file= "/component/js/consultdoc_botton_js.jsp" %>

    
    
    
    
    
  <div class="flex justify-center items-center h-screen ">
    <!-- Left Panel (Form) -->
    <div class="bg-white p-8 rounded-lg shadow-lg w-1/2 ">
      <h2 class="text-2xl font-bold mb-6">Consult with a Doctor</h2>

      <!-- Specialty Field -->
      <div class="mb-4">
        <label for="specialty" class="block text-gray-700 text-sm font-bold mb-2">Specialty</label>
        <div class="flex items-center">
          <input type="radio" id="gynaecology" name="specialty" value="Gynaecology" checked class="mr-2" />
          <label for="gynaecology" class="text-gray-700"> Gynaecology </label>
          <span class="ml-auto text-gray-700">₹50</span>
        </div>
      </div>

      <!-- Patient Name Field -->
      <div class="mb-4">
        <label for="patient-name" class="block text-gray-700 text-sm font-bold mb-2">Patient Name</label>
        <input
          type="text"
          id="patient-name"
          placeholder="Enter patient name for prescriptions"
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
        />
      </div>

      <!-- Mobile Number Field -->
      <div class="mb-6">
        <label for="mobile-number" class="block text-gray-700 text-sm font-bold mb-2 maxlength="10"">Mobile Number</label>
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
            placeholder="number"
            maxlength="10"
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
           />
        </div>
        <p class="text-gray-600 text-xs mt-2">A verification code will be sent to this number.</p>
      </div>
<!-- Continue Button -->
<button id="continueBtn" class="bg-red-500 text-white font-bold py-2 px-4 rounded hover:bg-blue-600">
    Continue
</button>

<script>
    document.getElementById("continueBtn").addEventListener("click", function(event) {
        let patientName = document.getElementById("patient-name").value.trim();
        let mobileNumber = document.getElementById("mobile-number").value.trim();

        if (patientName === "" || mobileNumber === "") {
            alert("Please fill in all required fields before continuing.");
            event.preventDefault(); // Prevent navigation
        } else {
            window.location.href = "QRScanner/QRCode.jsp"; // Navigate only if fields are filled
        }
    });
    
</script>
            
          
    </div>
 <div class=" ml-8 flex flex-col items-center">
      <img src="https://i.pinimg.com/736x/18/43/f6/1843f67cd829be499ee310abaa2f8531.jpg" alt="Doctor Illustration" class="w-24 h-24" />
      <p class="text-center text-gray-700 mt-2">Verified Doctors</p>
    </div>
    <!-- Right Column (Doctor Illustration) -->
    
  </div>
             
</body>
</html>
