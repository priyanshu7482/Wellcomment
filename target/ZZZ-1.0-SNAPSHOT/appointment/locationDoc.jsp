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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> LocationDoc </title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">

  <!-- Top Filters -->
  <div class="bg-[#262e91] text-white p-4 flex flex-wrap gap-4 justify-center">
    <select class="bg-white text-black rounded px-4 py-2">
      <option>Gender</option>
    </select>
    <select class="bg-white text-black rounded px-4 py-2">
      <option>Patient Stories</option>
    </select>
    <select class="bg-white text-black rounded px-4 py-2">
      <option>Experience</option>
    </select>
    <select class="bg-white text-black rounded px-4 py-2">
      <option>All Filters</option>
    </select>
    <select class="bg-white text-black rounded px-4 py-2">
      <option>Sort By: Relevance</option>
    </select>
  </div>

  <!-- Heading -->
  <div class="px-8 py-6">
    <h2 class="text-2xl font-semibold text-gray-800">94 Dentists available in Jp nagar</h2>
    <p class="text-gray-600 text-sm mt-1">Book appointments with minimum wait-time & verified doctor details</p>
  </div>

  <!-- Listing 1 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Media -->
    <div class="flex-shrink-0">
     <video class="w-full h-auto" controls autoplay muted>
      <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/SNv7Pyhimz0q0vg/videoblocks-oral-hygiene-and-dental-care-doctor-dentist-working-with-patient-in-dental-clinic-healthcare-concept_b5qfftbz___0045552a68bc7c32edc5f37b4e36809b__P360.mp4">
      Your browser does not support the video tag.
    </video>
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Chisel Dental</h3>
        <p class="text-gray-600">Koramangala</p>
        <p class="text-gray-800 font-semibold mt-2">₹300 - ₹350 Consultation Fees</p>
        <p class="text-purple-600 text-sm mt-1">Expert Care, Flawless Smiles—Only at Chisel Dental</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">98%</span>
        <span class="text-blue-700 text-sm underline">9042 Patient Stories</span>
      </div>
    </div>

    <!-- Right Button -->
    <div class="flex items-center justify-center">
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
    </div>
  </div>

  
  
  <!-- Listing 2 -->
<div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
  <!-- Left Profile Picture -->
  <div class="flex-shrink-0">
    <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
  </div>

  <!-- Middle Info -->
  <div class="flex flex-col justify-between">
    <div>
      <h3 class="text-xl font-bold text-blue-900">Dr. Priyanshu H.C</h3>
      <p class="text-gray-600">Dentist</p>
      <p class="text-gray-600 text-sm">23 years experience overall</p>
      <p class="text-gray-800 mt-2">Jayanagar 4 Block, Dehri - <span class="font-semibold">Excel Dental Care</span></p>
      <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
    </div>
    <div class="flex items-center mt-4 space-x-2">
      <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
      <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
    </div>
  </div>

  <!-- Right Buttons -->
  <div class="flex flex-col items-center justify-center space-y-2">
    <span class="text-green-600 font-semibold text-sm">Available Today</span>
     <button onclick="toggleSlots('slots-1')" class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
    Book Clinic Visit
  </button>
    <button onclick="toggleContact()" class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
      📞 Contact Clinic
    </button>
  
  </div>
</div>
  
  
  
  
  <!-- book clinic visit -->
<!-- Appointment Slots Section -->
<div id="slots-1" class="hidden mx-8 mb-6">
  <div class="border rounded-lg p-4 shadow-sm bg-white">
    <h4 class="text-center font-semibold text-lg mb-4">
      Book an appointment for <span class="font-bold">Consultation</span>
    </h4>

    <!-- Date Tabs -->
    <div class="flex justify-center space-x-8 mb-4">
      <div onclick="showSlots('today')" class="cursor-pointer text-center">
        <p class="font-bold text-blue-900">Today</p>
        <p class="text-green-600 text-sm">10 Slots Available</p>
      </div>
      <div onclick="showSlots('tomorrow')" class="cursor-pointer text-center">
        <p class="font-bold text-blue-900">Tomorrow</p>
        <p class="text-green-600 text-sm">11 Slots Available</p>
      </div>
      <div onclick="showSlots('wed')" class="cursor-pointer text-center">
        <p class="font-bold text-blue-900">Wed, 28 May</p>
        <p class="text-green-600 text-sm">12 Slots Available</p>
      </div>
    </div>

    <!-- Slot Container -->
    <div id="slot-content" class="space-y-6">
<script>
  const slots = {
    today: {
      Afternoon: ["12:45 PM", "01:00 PM", "01:15 PM", "01:30 PM", "01:45 PM"],
      Evening: ["07:30 PM", "07:45 PM"],
      Night: ["08:00 PM", "08:15 PM", "08:30 PM", "08:45 PM"],
    },
    tomorrow: {
      Afternoon: ["01:00 PM", "01:15 PM", "01:30 PM", "01:45 PM"],
      Evening: ["07:30 PM", "07:45 PM"],
      Night: ["08:00 PM", "08:15 PM", "08:30 PM", "08:45 PM"],
    },
    wed: {
      Afternoon: ["01:30 PM", "01:45 PM"],
      Evening: ["07:30 PM", "07:45 PM"],
      Night: ["08:00 PM", "08:15 PM", "08:30 PM", "08:45 PM"],
    }
  };

  function toggleSlots(id) {
    const slotDiv = document.getElementById(id);
    if (slotDiv.classList.contains("hidden")) {
      slotDiv.classList.remove("hidden");
      showSlots("today"); // default
    } else {
      slotDiv.classList.add("hidden");
    }
  }

  function showSlots(day) {
    const container = document.getElementById("slot-content");
    container.innerHTML = ""; // Clear existing

    for (const [period, times] of Object.entries(slots[day])) {
      const section = document.createElement("div");

      const label = document.createElement("p");
      label.textContent = period === "Afternoon" ? "🌤 " + period :
                          period === "Evening" ? "🌇 " + period :
                          "🌙 " + period;
      label.className = "font-semibold mb-2";

      const timeButtons = document.createElement("div");
      timeButtons.className = "flex flex-wrap gap-2";

      times.forEach(time => {
        const btn = document.createElement("button");
        btn.textContent = time;
        btn.className = "px-4 py-2 border rounded hover:bg-blue-100";
        timeButtons.appendChild(btn);
      });

      section.appendChild(label);
      section.appendChild(timeButtons);
      container.appendChild(section);
    }
  }
</script>
    </div>
  </div>
</div>




<!-- Contact Clinic
<!-- Hidden Contact Section -->
<div id="contactSection" class="hidden mx-8 mt-2 p-4 border-t border-gray-200 text-sm">
  <p class="text-gray-600">Phone number</p>
  <p class="text-green-600 text-xl font-bold">07482892121</p>
  <p class="text-gray-500 mt-2">
    By calling this number, you agree to the 
    <a href="#" class="text-blue-500 underline">Terms & Conditions</a>.
    If you could not connect with the center, please write to 
    <a href="kumarpriyanshu10900@gmail.com" class="text-blue-500 underline">support@wellconnect.com</a>
  </p>
</div>

<script>
  function toggleContact() {
    const section = document.getElementById('contactSection');
    section.classList.toggle('hidden');
  }
</script>

  
  
  
  


  
    <!-- Listing 3 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/ayush.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Ayush H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Keshav 4 Block, Sasaram - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button onclick="toggleContact1()" class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
      📞 Contact Clinic
    </button>
  </div>
</div>

    
    
    
    
    
    
    
    
    
    
    
<!-- Hidden Contact Section -->
<div id="contactSection1" class="hidden mx-8 mt-2 p-4 border-t border-gray-200 text-sm">
  <p class="text-gray-600">Phone number</p>
  <p class="text-green-600 text-xl font-bold">07482892121</p>
  <p class="text-gray-500 mt-2">
    By calling this number, you agree to the 
    <a href="#" class="text-blue-500 underline">Terms & Conditions</a>.
    If you could not connect with the center, please write to 
    <a href="kumarpriyanshu10900@gmail.com" class="text-blue-500 underline">support@wellconnect.com</a>
  </p>
</div>

<script>
  function toggleContact1() {
    const section = document.getElementById('contactSection1');
    section.classList.toggle('hidden');
  }
</script>

 
  
    


    
    
      <!-- Listing 4 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Rahul H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button onclick="toggleContact2()"class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
  <!-- Hidden Contact Section -->
<div id="contactSection2" class="hidden mx-8 mt-2 p-4 border-t border-gray-200 text-sm">
  <p class="text-gray-600">Phone number</p>
  <p class="text-green-600 text-xl font-bold">07482892121</p>
  <p class="text-gray-500 mt-2">
    By calling this number, you agree to the 
    <a href="#" class="text-blue-500 underline">Terms & Conditions</a>.
    If you could not connect with the center, please write to 
    <a href="kumarpriyanshu10900@gmail.com" class="text-blue-500 underline">support@wellconnect.com</a>
  </p>
</div>

<script>
  function toggleContact2() {
    const section = document.getElementById('contactSection2');
    section.classList.toggle('hidden');
  }
</script>
  
      
      
      
      
        <!-- Listing 5 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/ayush.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
        
        
        
        
        
          <!-- Listing 6 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    

    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
          
          
          
          
            <!-- Listing 7 -->
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
  
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
    
    
    
  </div><div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
    
    
    
  </div><div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>
            
            
            
  <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
    
    
    
  </div>
            <div class="bg-white mx-8 my-4 rounded-lg shadow p-6 flex flex-col lg:flex-row gap-6">
    
    <!-- Left Profile Picture -->
    <div class="flex-shrink-0">
      <img src="../img/priyanshu.jpg" alt="Doctor" class="rounded-full w-20 h-20 object-cover">
    </div>

    <!-- Middle Info -->
    <div class="flex flex-col justify-between">
      <div>
        <h3 class="text-xl font-bold text-blue-900">Dr. Jnanesha H.C</h3>
        <p class="text-gray-600">Dentist</p>
        <p class="text-gray-600 text-sm">23 years experience overall</p>
        <p class="text-gray-800 mt-2">Jayanagar 4 Block, Bangalore - <span class="font-semibold">Excel Dental Care</span></p>
        <p class="text-gray-800 font-semibold mt-1">₹300 Consultation fee at clinic</p>
      </div>
      <div class="flex items-center mt-4 space-x-2">
        <span class="bg-green-100 text-green-700 font-semibold px-2 py-1 rounded text-xs">99%</span>
        <span class="text-blue-700 text-sm underline">477 Patient Stories</span>
      </div>
    </div>

    <!-- Right Buttons -->
    <div class="flex flex-col items-center justify-center space-y-2">
      <span class="text-green-600 font-semibold text-sm">Available Today</span>
      <button class="bg-[#22c55e] text-white px-6 py-2 rounded hover:bg-[#16a34a]">
        Book Clinic Visit
      </button>
      <button class="flex items-center border border-blue-500 text-blue-500 px-4 py-2 rounded hover:bg-blue-50">
        📞 Contact Clinic
      </button>
    </div>
  </div>

            
            
            
            
 <div class="overflow-x-auto">
  <table class="w-full border border-gray-300 text-left">
    <thead class="bg-gray-100">
      <tr>
        <th class="px-4 py-2 border-b">Name</th>
        <th class="px-4 py-2 border-b">Recommended By</th>
        <th class="px-4 py-2 border-b">Review Count</th>
        <th class="px-4 py-2 border-b">Experience</th>
        <th class="px-4 py-2 border-b">Fee (₹)</th>
      </tr>
    </thead>
    <tbody>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Priyanshu Singh</td>
        <td class="px-4 py-2 border-b">96%</td>
        <td class="px-4 py-2 border-b">100</td>
        <td class="px-4 py-2 border-b">15</td>
        <td class="px-4 py-2 border-b">800</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Ayush Rani</td>
        <td class="px-4 py-2 border-b">99%</td>
        <td class="px-4 py-2 border-b">100</td>
        <td class="px-4 py-2 border-b">18</td>
        <td class="px-4 py-2 border-b">500</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Bittu Kumar</td>
        <td class="px-4 py-2 border-b">98%</td>
        <td class="px-4 py-2 border-b">163</td>
        <td class="px-4 py-2 border-b">20</td>
        <td class="px-4 py-2 border-b">500</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Ayush Gu</td>
        <td class="px-4 py-2 border-b">97%</td>
        <td class="px-4 py-2 border-b">37</td>
        <td class="px-4 py-2 border-b">8</td>
        <td class="px-4 py-2 border-b">300</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Neha Kumari</td>
        <td class="px-4 py-2 border-b">100%</td>
        <td class="px-4 py-2 border-b">8</td>
        <td class="px-4 py-2 border-b">9</td>
        <td class="px-4 py-2 border-b">200</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Asad Haider</td>
        <td class="px-4 py-2 border-b">83%</td>
        <td class="px-4 py-2 border-b">6</td>
        <td class="px-4 py-2 border-b">11</td>
        <td class="px-4 py-2 border-b">200</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Rakesh Kumar</td>
        <td class="px-4 py-2 border-b">88%</td>
        <td class="px-4 py-2 border-b">24</td>
        <td class="px-4 py-2 border-b">10</td>
        <td class="px-4 py-2 border-b">300</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Lav Kumar</td>
        <td class="px-4 py-2 border-b">100%</td>
        <td class="px-4 py-2 border-b">14</td>
        <td class="px-4 py-2 border-b">18</td>
        <td class="px-4 py-2 border-b">500</td>
      </tr>
      <tr class="hover:bg-gray-50">
        <td class="px-4 py-2 border-b">Dr. Chitranjan Prasad</td>
        <td class="px-4 py-2 border-b">100%</td>
        <td class="px-4 py-2 border-b">3</td>
        <td class="px-4 py-2 border-b">48</td>
        <td class="px-4 py-2 border-b">400</td>
      </tr>
    </tbody>
  </table>
</div>


  
  

</body>
</html>
