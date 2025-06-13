<%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <!-- Responsive viewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>FindDoc</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    .dropdown-item:hover {
      background-color: #f1f1f1;
      color: black;
    }
  </style>
</head>
<body>
  <!-- Main Container -->
  <div class="bg-rose-500 text-white min-h-600 flex flex-col justify-between h-[650px]">
    <!-- Top Section -->
    <section class="flex flex-col items-center py-12 space-y-6 relative">
      <h1 class="text-3xl font-bold">Your home for health</h1>
      
      <!-- Search Box -->
      <div class="flex flex-col md:flex-row items-center gap-4 mt-6 relative">
        
        <!-- Location Input -->
        <div class="relative">
          <div class="bg-white rounded-md overflow-hidden mb-2">
            <input id="locationInput" 
                   onclick="toggleDropdown('cityDropdown')" 
                   oninput="checkAndRedirect()" 
                   type="text" 
                   placeholder="Location" 
                   class="px-4 py-2 text-black w-64 focus:outline-none" 
                   autocomplete="off" />
          </div>
          <!-- City Dropdown -->
          <div id="cityDropdown" class="absolute bg-white text-black rounded-md shadow-md w-64 hidden z-10">
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectCity('Mumbai')">Mumbai</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectCity('Delhi')">Delhi</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectCity('Bihar')">Bihar</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectCity('UP')">UP</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectCity('Chennai')">Chennai</div>
          </div>
        </div>
        
        <!-- Specialist (Search Clinic) Input -->
        <div class="relative">
          <div class="bg-white rounded-md overflow-hidden mb-2">
            <input id="specialistInput" 
                   onclick="toggleDropdown('specialistDropdown')" 
                   oninput="checkAndRedirect()" 
                   type="text" 
                   placeholder="Search doctors, clinics, hospitals, etc." 
                   class="px-4 py-2 text-black w-80 focus:outline-none" 
                   autocomplete="off" />
          </div>
          <!-- Specialist Dropdown -->
          <div id="specialistDropdown" class="absolute bg-white text-black rounded-md shadow-md w-80 hidden z-10">
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('Dermatologist')">Dermatologist</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('Pediatrician')">Pediatrician</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('Gynecologist/Obstetrician')">Gynecologist/Obstetrician</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('Orthopedic')">Orthopedic</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('Cardiologist')">Cardiologist</div>
            <div class="px-4 py-2 cursor-pointer dropdown-item" onclick="selectSpecialist('ENT Specialist')">ENT Specialist</div>
          </div>
        </div>
        
      </div>
    </section>
    
    <!-- Popular Searches -->
    <div class="flex justify-center">
      <div class="flex space-x-6 mt-4 text-sm opacity-80">
        <a href="#" class="hover:underline">Dermatologist</a>
        <a href="#" class="hover:underline">Pediatrician</a>
        <a href="#" class="hover:underline">Gynecologist/Obstetrician</a>
        <a href="#" class="hover:underline">Orthopedic</a>
      </div>
    </div>
    
    <!-- Footer -->
    <footer class="bg-[#1b215b] p-4 flex justify-around text-sm text-white">
      <a href="#" class="flex flex-col items-center hover:text-gray-300">💬<span>Consult with a doctor</span></a>
      <a href="#" class="flex flex-col items-center hover:text-gray-300">🛒<span>Order Medicines</span></a>
      <a href="#" class="flex flex-col items-center hover:text-gray-300">📄<span>View medical records</span></a>
      <a href="#" class="flex flex-col items-center hover:text-gray-300">🧪<span>Book test <span class="text-green-400 text-xs">New</span></span></a>
      <a href="#" class="flex flex-col items-center hover:text-gray-300">📚<span>Read articles</span></a>
      <a href="#" class="flex flex-col items-center hover:text-gray-300">🏥<span>For healthcare providers</span></a>
    </footer>
  </div>
  
  <!-- JavaScript Section -->
  <script>
    // Toggle dropdown for a given element ID (location or specialist)
    function toggleDropdown(id) {
      // Close both dropdowns first
      document.getElementById("cityDropdown").classList.add("hidden");
      document.getElementById("specialistDropdown").classList.add("hidden");
      // Toggle the clicked dropdown
      const dropdown = document.getElementById(id);
      dropdown.classList.toggle("hidden");
    }
    
    // Set the selected city in the location input, hide dropdown, and check redirection
    function selectCity(city) {
      document.getElementById("locationInput").value = city;
      document.getElementById("cityDropdown").classList.add("hidden");
      checkAndRedirect();
    }
    
    // Set the selected specialist in the specialist input, hide dropdown, and check redirection
    function selectSpecialist(specialist) {
      document.getElementById("specialistInput").value = specialist;
      document.getElementById("specialistDropdown").classList.add("hidden");
      checkAndRedirect();
    }
    
    
    // Check both input values and redirect based on specified conditions for different cities
  function checkAndRedirect() {
  var locationVal = document.getElementById("locationInput").value.trim().toLowerCase();
  var specialistVal = document.getElementById("specialistInput").value.trim().toLowerCase();

  // Mumbai conditions
  if (locationVal === "mumbai" && specialistVal === "dermatologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "mumbai" && specialistVal === "pediatrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "mumbai" && specialistVal === "gynecologist/obstetrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "mumbai" && specialistVal === "orthopedic") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "mumbai" && specialistVal === "cardiologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "mumbai" && specialistVal === "ent specialist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  }
  
  
  // Bihar conditions
  else if (locationVal === "bihar" && specialistVal === "dermatologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "bihar" && specialistVal === "pediatrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "bihar" && specialistVal === "gynecologist/obstetrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "bihar" && specialistVal === "orthopedic") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "bihar" && specialistVal === "cardiologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "bihar" && specialistVal === "ent specialist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  }
  
  
  // Delhi conditions
  else if (locationVal === "delhi" && specialistVal === "dermatologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "delhi" && specialistVal === "pediatrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "delhi" && specialistVal === "gynecologist/obstetrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "delhi" && specialistVal === "orthopedic") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "delhi" && specialistVal === "cardiologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "delhi" && specialistVal === "ent specialist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  }
  
  
  // UP conditions
  else if (locationVal === "up" && specialistVal === "dermatologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "up" && specialistVal === "pediatrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "up" && specialistVal === "gynecologist/obstetrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "up" && specialistVal === "orthopedic") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "up" && specialistVal === "cardiologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "up" && specialistVal === "ent specialist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  }
  
  
  // Chennai conditions
  else if (locationVal === "chennai" && specialistVal === "dermatologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "chennai" && specialistVal === "pediatrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "chennai" && specialistVal === "gynecologist/obstetrician") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "chennai" && specialistVal === "orthopedic") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "chennai" && specialistVal === "cardiologist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  } else if (locationVal === "chennai" && specialistVal === "ent specialist") {
    window.location.href = "locationDoc.jsp?q=" + encodeURIComponent(specialistVal);
  }
}


    
    // Optional: Close dropdowns if user clicks outside input and dropdown areas
    document.addEventListener("click", function(event) {
      const isClickInside = event.target.closest("#locationInput, #cityDropdown, #specialistInput, #specialistDropdown");
      if (!isClickInside) {
        document.getElementById("cityDropdown").classList.add("hidden");
        document.getElementById("specialistDropdown").classList.add("hidden");
      }
    });
  </script>
</body>
</html>