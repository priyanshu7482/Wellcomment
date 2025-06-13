<%-- 
    Document   : ViewSpecialitie
    Created on : Apr 23, 2025, 1:11:51 PM
    Author     : sumitkumarsoni
--%>
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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CSS using CDN (Latest Tailwind v3+) -->
    <script src="https://cdn.tailwindcss.com"></script>
    <title>ViewSpecilitie</title>
  </head>
  <body class="bg-gray-100">
      
  <%@include file= "component/includeFile/DashNav.jsp" %>
      
    <div class="  mx-auto p-6">
      <!-- Main Advertisement Container -->
      <div class="bg-white rounded-lg shadow-lg overflow-hidden flex flex-col md:flex-row">
        <!-- Left Side Content -->
        <div class="p-6 md:w-1/2 flex flex-col justify-center">
          <p class="text-blue-500 font-bold text-lg">Skip the travel!</p>
          <h1 class="mt-2 text-3xl font-extrabold text-gray-800">
            Take Online Doctor Consultation
          </h1>
          <p class="mt-4 text-gray-600">
            Private consultation <span class="font-semibold">+ Audio call</span>
            - Starts at just <span class="text-xl font-bold">₹199</span>
          </p>
          <div class="mt-6 flex items-center">
            <!-- Circular Doctor Images -->
            <div class="flex -space-x-3">
              <img
                class="w-10 h-10 rounded-full border-2 border-white"
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD8ZHQEXFF5oSIzXifb0rWe70DxdMyW4nWvA&s"
                alt="Doctor 1"
              />
              <img
                class="w-10 h-10 rounded-full border-2 border-white"
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzZJfr8isw7BIVfzAM_7XRIx7qddbpGcUD0A&s"
                alt="Doctor 2"
              />
              <img
                class="w-10 h-10 rounded-full border-2 border-white"
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRripLcqGUKIBfgbtmux6U1UY9UkgezqzJzFw&s"
                alt="Doctor 3"
              />
            </div>
            <div class="ml-4 flex items-center text-gray-600 text-sm">
              <span
                class="w-3 h-3 bg-green-500 rounded-full inline-block mr-2"
              ></span>
              +134 Doctors are online
            </div>
          </div>
          <button
            class="mt-6 bg-blue-500 text-white py-2 px-6 rounded hover:bg-blue-600 transition-colors duration-200">
              <a href="consultdoc/HealthProblem.jsp">Consult Now</a>
          </button>
        </div>
        <!-- Right Side Content (Illustration/Image) -->
        <div class="md:w-1/2">
          <img
            class="w-full h-full object-cover"
            src="https://www.practo.com/consult/static/images/homepage-hero-image-web-v1.png"
            alt="Online Consultation"
          />
        </div>
      </div>

      <!-- Bottom Icons Section -->
      <div class="mt-8 grid grid-cols-1 sm:grid-cols-3 gap-6">
        <!-- Verified Doctors -->
        <div class="flex flex-col items-center">
          <!-- Check Icon -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-10 w-10 text-blue-500"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M5 13l4 4L19 7"
            />
          </svg>
          <p class="mt-2 text-gray-600 font-medium">Verified Doctors</p>
        </div>
        <!-- Digital Prescription -->
        <div class="flex flex-col items-center">
          <!-- Document Icon -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-10 w-10 text-blue-500"
            viewBox="0 0 20 20"
            fill="currentColor"
          >
            <path
              d="M8 2a2 2 0 00-2 2v12a2 2 0 002 2h4a2 2 0 002-2V4a2 2 0 00-2-2H8z"
            />
          </svg>
          <p class="mt-2 text-gray-600 font-medium">
            Digital Prescription
          </p>
        </div>
        <!-- Free Followup -->
        <div class="flex flex-col items-center">
          <!-- Heart Icon -->
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-10 w-10 text-blue-500"
            viewBox="0 0 20 20"
            fill="currentColor"
          >
            <path
              fill-rule="evenodd"
              d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 015.656 5.656L10 18.657l-6.828-6.829a4 4 0 010-5.656z"
              clip-rule="evenodd"
            />
          </svg>
          <p class="mt-2 text-gray-600 font-medium">Free Followup</p>
        </div>
      </div>
    <%@include file= "component/includeFile/consultView.jsp" %>
    
    
    
    
    
   <!-- Our Doctors Section -->
      <div class="max-w-7xl mx-auto px-4 py-8">

      
      <section>
        <h2 class="text-3xl font-bold text-center mb-6">Our Doctors</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <!-- Doctor Card 1 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/priyanshu.jpg" alt="Dr. Priyanshu kr." class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Priyanshu kr.</h3>
              <p class="text-gray-500">Dermatologist</p>
              <p class="text-sm text-gray-400">5 years experience</p>
              <p class="text-sm text-gray-400">780 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 2 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/ayush.jpg" alt="Dr. ayushi" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Ayush Jaishwal</h3>
              <p class="text-gray-500">Sexologist</p>
              <p class="text-sm text-gray-400">6 years experience</p>
              <p class="text-sm text-gray-400">104 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 3 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/bittu.jpg" alt="Dr. Pushpa Gour" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Pushpa Gour</h3>
              <p class="text-gray-500">Gynecologist</p>
              <p class="text-sm text-gray-400">9 years experience</p>
              <p class="text-sm text-gray-400">440 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 4 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/gautam.jpg" alt="Dr. Prateeksha B S" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Prateek B S</h3>
              <p class="text-gray-500">Obstetrician, Gynecologist</p>
              <p class="text-sm text-gray-400">6 years experience</p>
              <p class="text-sm text-gray-400">563 consults done</p>
            </div>
          </div>
        </div>
      </section>

      <!-- How It Works Section -->
      
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    

      <!-- How It Works Section -->
      <section class="mt-12">
        <h2 class="text-3xl font-bold text-center mb-6">How It Works</h2>
        <div class="flex flex-col md:flex-row justify-center items-center gap-8">
          <!-- Step 1 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 1</h3>
            <p class="text-gray-600">Select a speciality or symptom</p>
          </div>
          <!-- Step 2 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 2</h3>
            <p class="text-gray-600">Audio/Video call with a verified doctor</p>
          </div>
          <!-- Step 3 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 3</h3>
            <p class="text-gray-600">Get a digital prescription &amp; free follow-up</p>
          </div>
        </div>
      </section>

      <!-- Statistics Section -->
      <section class="mt-12">
        <div class="bg-blue-600 text-white rounded-lg p-6">
          <div class="flex flex-col sm:flex-row justify-around items-center">
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">2,00,000+</p>
              <p class="text-lg">Happy Users</p>
            </div>
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">20,000+</p>
              <p class="text-lg">Verified Doctors</p>
            </div>
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">25+</p>
              <p class="text-lg">Specialities</p>
            </div>
            <div class="text-center">
              <p class="text-3xl font-bold">4.5 / 5</p>
              <p class="text-lg">App Rating</p>
            </div>
          </div>
        </div>
      </section>

    </div>
 
    </div>
  </body>
</html>
